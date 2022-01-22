FROM golang:alpine

LABEL author="Josh Rolstad"

ENV GIN_MODE=release
ENV PORT=3004

COPY ./app/webservice-gin /api

WORKDIR /api

# Run the two commands below to install git and dependencies for the project. 
RUN apk update && apk add --no-cache git
RUN go get 

RUN go build .

EXPOSE $PORT

ENTRYPOINT ["./webservice-gin"]