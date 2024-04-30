# Golang image as a base image.
FROM golang:latest

# Set the working directory inside the container to ws.
WORKDIR /ws

# Install dependencies
RUN apt-get update && apt-get install -y postgresql-client
RUN go install github.com/google/wire/cmd/wire@latest
RUN go install github.com/vektra/mockery/v2@v2.43.0

# Set the entry point to the bash shell.
ENTRYPOINT ["/bin/bash"]
