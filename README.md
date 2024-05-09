# Docker Ergo Node

This repository contains a Dockerfile and scripts to set up and run an Ergo node inside a Docker container.

## Dependencies

- Docker

## Getting Started

1. Clone this repository:
git clone https://github.com/your-repo/docker-ergo-node.git

2. Build the Docker image:
docker build -t ergo-node .

3. Run the Docker container:
docker run -d --name ergo-node -e ERGO_DATA_DIR=/path/to/data/dir ergo-node


Replace `/path/to/data/dir` with the desired path on your host machine where the Ergo node data will be stored.

## Docker Environment Variables

- `ERGO_DATA_DIR`: The path on the host machine where the Ergo node data will be stored. This directory will be mounted as a volume inside the container.

## Ergo Node Configuration

The `ergo.conf` file is automatically generated and configured with the following properties:

- `node.extraIndex`: Enables the extra index feature for improved performance. By default, it is set to `true`.
- `node.extraCacheSize`: The size of the extra cache. By default, it is set to `500`.
- `node.utxoBootstrap`: Enables the UTXO bootstrap feature for initial synchronization. By default, it is set to `true`.
- `node.storingUtxoSnapshots`: The number of UTXO snapshots to store. By default, it is set to `2`.

You can modify these configuration properties by editing the `start_node.sh` script and rebuilding the Docker image.

## License

This project is licensed under the [MIT License](LICENSE).
