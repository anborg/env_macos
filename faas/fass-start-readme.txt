# https://github.com/openfaas/faasd/blob/master/docs/MULTIPASS.md
# brew cask install multipass


Generate rsa key 
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
curl -sSLO https://raw.githubusercontent.com/openfaas/faasd/master/cloud-config.txt


multipass launch --cloud-init cloud-config.txt  --name faasd

multipass info faasd

Name:           faasd
State:          Running
IPv4:           192.168.64.14
Release:        Ubuntu 18.04.3 LTS
Image hash:     a720c34066dc (Ubuntu 18.04 LTS)
Load:           0.79 0.19 0.06
Disk usage:     1.1G out of 4.7G
Memory usage:   145.6M out of 985.7M

export IP="192.168.64.14"

export IP=$(multipass info faasd --format json| jq '.info.faasd.ipv4[0]' | tr -d '\"')

ssh ubuntu@$IP

ssh ubuntu@$IP "sudo cat /var/lib/faasd/secrets/basic-auth-password" > basic-auth-password


export OPENFAAS_URL=http://$IP:8080
cat basic-auth-password | faas-cli login -s

faas-cli store deploy figlet --env write_timeout=1s
echo "faasd" | faas-cli invoke figlet

faas-cli describe figlet

# Run async
curl -i -d "faasd-async" $OPENFAAS_URL/async-function/figlet

# Run async with a callback

curl -i -d "faasd-async" -H "X-Callback-Url: http://some-request-bin.com/path" $OPENFAAS_URL/async-function/figlet


