su mer
brew install kafka
brew install zookeeper
zkserver start
kafka-server-start /usr/local/etc/kafka/server.properties

#ceate topic
kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
#produce 
kafka-console-producer --broker-list localhost:9092 --topic test > HELLO Kafka
#consume 
kafka-console-consumer --bootstrap-server localhost:9092 --topic test --from-beginning
# Use Konduktor.io uis