FROM alpine:3.18

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY replace.sh /

WORKDIR /

# Make the script executable
RUN chmod +x replace.sh

# Code file to execute when the Docker container starts up (`replace.sh`)
ENTRYPOINT ["/replace.sh"]