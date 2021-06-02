FROM golang:1.16

# Set the Current Working Directory inside the container
WORKDIR $GOPATH/src/github.com/muralov/sample-controller

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

RUN go build -o sample-controller .

# Run the executable
CMD ["sample-controller"]