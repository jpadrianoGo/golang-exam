# Akaru.io - Golang Exam

This project follows a microservice architecture on a single network with nginx as the reverse proxy.

## Services

#### 1. Bar service

This service is running on `http://localhost:80` and currently has two endpoints.

1. `/` - when you visit `http://localhost:80`, it is expected to have a get a message output "This is bar service."
2. `/ping` - when you visit `http://localhost:80/ping`, it is expected to get a message output "Success" with HTTP status 200.

#### 2. Fileupload service

1. `/fileupload` - when you visit `http://localhost:80/fileupload`, it should show the GraphQL playground.
2. `/query` - you can perform requests here to test the fileupload mutations.


## What you need to do

#### 1. Fix the problem with Bar service

> Category: Debugging

- When we visit `http://localhost:80` the server is not responding as expected.
- Apply necessary fixes by investigating the codebase so we can access Bar service on `http://localhost:80`

###### Expected outcome:

To confirm if it's fixed, we should see the following behaviors

1. A message displaying "This is bar service" when we visit `http://localhost:80`
```
$ curl http://localhost:80
This is bar service!
```


2. A message displaying "Success!" when we visit `http://localhost:80/ping`

```
$ curl http://localhost:80/ping
{"status":"200","message":"Success!"}
```

#### 2. Add a `ping` query to Fileupload service

> Category: General Golang Knowledge & Basic GraphQL

- We added a `ping` query to Fileupload service in this commit.
- Update the code in fileupload-service by writing a resolver to implement the `ping` query.

#### 3. There are no tests for Bar service

> Category: Testing

- Bar service provides basic API endpoints and we want to ensure that those endpoints are working properly as expected.
- Kindly write tests and you can use any testing framework or library that you want.
- You may exercise your own decision making and implement unit tests in any way you want.

## Setup

#### Install docker

- <https://docs.docker.com/get-docker/>

#### Install docker-compose

- <https://docs.docker.com/compose/install/>

#### Build and run the server

```
$ docker-compose up --build
```
