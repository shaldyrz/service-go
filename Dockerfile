# Use the official Golang image
FROM golang:1.23.1-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the project directory to the container
COPY . .

# Build the Go application
RUN go build -o app

# Define the command to run the application
CMD ["./app"]