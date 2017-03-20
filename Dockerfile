FROM golang:1.8

RUN mkdir -p /go/src/app
WORKDIR /go/src/app
ADD .  /go/src/app

# Download and install any required third party dependencies into the container.
RUN go-wrapper download
RUN go-wrapper install

# Now tell Docker what command to run when the container starts
CMD ["go-wrapper", "run"]