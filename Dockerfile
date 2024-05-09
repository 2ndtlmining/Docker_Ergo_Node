# Use the latest Ubuntu LTS as the base image
FROM ubuntu:22.04

# Set the working directory
WORKDIR /app

# Install required packages
RUN apt-get update && \
    apt-get install -y openjdk-17-jre-headless wget curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download the start_node.sh script
RUN wget https://raw.githubusercontent.com/ladopixel/ergo-node-sh/main/start_node.sh

# Make the script executable
RUN chmod +x start_node.sh

# Define the API key as an environment variable
ENV API_KEY="your_api_key_here"

# Expose the default Ergo node ports
EXPOSE 9023/tcp
EXPOSE 9025/tcp
EXPOSE 9030/tcp
EXPOSE 9053/tcp

# Start the Ergo node
CMD ["./start_node.sh"]
