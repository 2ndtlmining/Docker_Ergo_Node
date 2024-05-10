# Docker Ergo Node

This repository contains a Dockerfile and scripts to set up and run an Ergo node inside a Docker container.

## Dependencies

- Docker

## Getting Started

1. Clone this repository:
git clone https://github.com/your-repo/docker-ergo-node.git


2. Obtain an API key from the Ergo platform.

3. Run the Docker container:

docker run -d --name ergo-node -e API_KEY=your_api_key ergo-node


## Docker Environment Variables

- ``our_api_key`: Please maintain your own API_KEY that you will use to unlock and lock your Node wallet.

## Ergo Node Configuration

The `ergo.conf` file is automatically generated and configured with the following properties:

- `node.extraIndex`: Enables the extra index feature for improved performance. By default, it is set to `true`.
- `node.extraCacheSize`: The size of the extra cache. By default, it is set to `500`.
- `node.utxoBootstrap`: Enables the UTXO bootstrap feature for initial synchronization. By default, it is set to `true`.
- `node.storingUtxoSnapshots`: The number of UTXO snapshots to store. By default, it is set to `2`.

You can modify these configuration properties by editing the `start_node.sh` script and rebuilding the Docker image.

## Additional Resources

- [Ergo Platform Documentation](https://ergo-platform.org/docs)
- [Docker Documentation](https://docs.docker.com/)

## License

This project is licensed under the [MIT License](LICENSE).
