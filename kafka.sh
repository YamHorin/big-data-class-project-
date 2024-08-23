#!/bin/bash

# Save the pwd into a value so I can cd when I finish
dir="$(pwd)"

#unzip the kafka foulder in downloads
cd /home/linuxu/Downloads
tar zxvf kafka_2.13-3.6.1.tgz

# Change directory to Kafka installation folder
cd /usr/local/kafka/kafka_2.13-3.2.1

# Start ZooKeeper server
./bin/zookeeper-server-start.sh config/zookeeper.properties &

# Wait until ZooKeeper is up
echo "Waiting for ZooKeeper to start..."
while ! nc -z localhost 2181; do
  sleep 1
done
echo "ZooKeeper is up and running!"

# Start Kafka server in a new terminal
gnome-terminal -- ./bin/kafka-server-start.sh config/server.properties &

sleep 5
# Create a new Kafka topic in a new terminal
gnome-terminal -- bash -c "./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic Football; exec bash"

# List existing Kafka topics
./bin/kafka-topics.sh --list --bootstrap-server localhost:9092

# Open pyspark in a new terminal with the correct directory
gnome-terminal -- bash -c "cd \"$dir\" && pyspark --packages org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.1; exec bash"

