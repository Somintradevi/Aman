# Use a base image with Node.js and npm
FROM ubuntu:20.04

# Set environment variables to avoid user interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl wget sudo apt-utils gnupg && \
    apt-get clean

# Copy the start-code-server script into the container
COPY start-code-server.sh /start-code-server.sh

# Make the script executable
RUN chmod +x /start-code-server.sh

# Run the script
CMD ["/start-code-server.sh"]
