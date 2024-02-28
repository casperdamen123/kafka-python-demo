# Kafka Demo
This is a simple demo of Kafka using Python. It uses the `confluent-kafka` library to produce and consume messages.

## Overview
This demo consists of two scripts: `producer.py` and `consumer.py`. 
The producer sends messages to the `purchases` topic and the consumer reads them.
The `docker-compose.yml` file is used to start a Kafka instance using Docker and to provide a web interface to manage the Kafka instance. In addition, a Python container is used to run the producer and consumer scripts.

## Getting started
You can use the `docker-compose.yml` file to start a Kafka instance using Docker. 

Run the following command to start the Kafka instance:

```bash
docker-compose up --build -d
```

The `kafka-init` service will create the `purchase` topic after the Kafka instance is running.
When the containers are running, you can access the web interface at `http://localhost:8080`. 

## Running the scripts
When the Docker containers are running, you can enter it to run the producer and consumer scripts following these steps:

1. Find `kafka-producer-consumer` container ID:

```bash
docker ps | grep kafka-producer-consumer
```

2. Enter the `kafka-producer-consumer` container:

```bash
docker exec -it <container_id> sh
```

3. Run the consumer script using Poetry:

```bash
poetry run python3 consumer.py config.ini
```

4. Open a new terminal and enter the `kafka-producer-consumer` container again:

```bash
docker exec -it <container_id> sh
```

5. Run the producer script using Poetry:

```bash
poetry run python3 producer.py config.ini
```

6. See the consumer output in the first terminal