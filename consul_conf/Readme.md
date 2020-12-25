To start

Uset the script in env_macos\bin
```
consul_start
```
It invokes config in consul_conf\server
It invokes in "-dev" mode

It stores cluster state in data_dir

http://localhost:8500/ui/


See consul.d/server/socat.json - for a socat service config

dig @127.0.0.1 -p 8600 m-app-rest.service.nyc2_local.consul. ANY


dig @127.0.0.1 -p 8600 m-app-rest.service.nyc2_local.consul. SRV