# Base the project on golang version 1.16
FROM golang:1.16

# Expose a port
EXPOSE 8080

# Declare the working directory
WORKDIR /usr/src/app

# Copy all the files from the local to the image
COPY . . 

# Run "go build", it will generate binary named "server"
RUN go build

# Run "server"
CMD ./server

# Command-line: docker build . -t backend-project && docker run -p 8080:8080 backend-project