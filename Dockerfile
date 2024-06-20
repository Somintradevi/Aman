FROM codercom/code-server:latest

# Optional: Add custom configuration or install additional packages
# RUN apt-get update && apt-get install -y <package_name>

# Copy your Code Server config if you have one
# COPY ./config.yaml /home/coder/.config/code-server/config.yaml

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none"]
