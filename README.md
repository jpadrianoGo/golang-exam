# Akaru.io - Golang Exam

This project follows a microservice architecture on a single network with nginx as the reverse proxy.

## Services

The services are running on `http://localhost:80` and currently has four (4) endpoints.

#### 1. Bar service (REST)

1. `/` - when you visit `http://localhost:80`, it is expected to have a get a message output "This is bar service."
2. `/ping` - when you visit `http://localhost:80/ping`, it is expected to get a message output "Success" with HTTP status 200.

#### 2. Fileupload service (GraphQL)

1. `/fileupload` - when you visit `http://localhost:80/fileupload`, it should show the GraphQL playground.
2. `/query` - you can perform requests here for the fileupload mutations and queries.

## What you need to do

#### 1. Fix the problem with Bar service

> Category: Debugging

- When we visit `http://localhost:80` the server is not responding as expected.
- Apply necessary fixes by investigating the codebase so we can access Bar service on `http://localhost:80`

###### Expected outcome:

To confirm if it's fixed, we should see the following behaviors at the
completion of your debugging process.

1. A message displaying "This is bar service" when we visit `http://localhost:80`
```
$ curl http://localhost:80
This is bar service!
```

<img width="1339" alt="Screen Shot 2021-06-07 at 7 25 30 PM" src="https://user-images.githubusercontent.com/2811885/121001369-2ef21080-c7c6-11eb-86bb-b596046bc60b.png">

2. A message displaying "Success!" when we visit `http://localhost:80/ping`

```
$ curl http://localhost:80/ping
{"status":"200","message":"Success!"}
```

<img width="1340" alt="Screen Shot 2021-06-07 at 7 25 36 PM" src="https://user-images.githubusercontent.com/2811885/121001372-2f8aa700-c7c6-11eb-9250-503773062a23.png">

#### 2. Add a `ping` query to Fileupload service

> Category: General Golang Knowledge & Basic GraphQL

- We added a `ping` query to Fileupload service in this [commit](https://github.com/akaru-io/golang-exam/commit/f4c4096e88dfb732023d62a3dcdefca0439496fa).
- Update the code in `fileupload-service` by writing a resolver to implement the `ping` query.
- The ping query should return a text response like below

```
Pong!
```

<img width="1440" alt="Screen Shot 2021-06-07 at 7 43 27 PM" src="https://user-images.githubusercontent.com/2811885/121003911-03245a00-c7c9-11eb-8acc-43256db8cf71.png">

#### 3. There are no tests for Bar service

> Category: Testing

- Bar service provides basic API endpoints and we want to ensure that those endpoints are working properly as expected.
- Kindly write tests and you can use any testing framework or library that you want.
- You may exercise your own decision making thought process and implement unit tests in any way you want.

## Setup

#### Clone the repository

```
$ git clone git@github.com:akaru-io/golang-exam.git
```

#### Install docker

- <https://docs.docker.com/get-docker/>

#### Install docker-compose

- <https://docs.docker.com/compose/install/>

#### Build and run the server

```
$ docker-compose up --build
```

## How to submit

1. Include in your code comments about your solution.
2. Please make sure we can see your git commit history.
3. Please zip everything in a directory named `yourfirst.lastname/` and return via email to `jobs@akaru.io`
4. In your email response please let us know roughly how many hours you spent on this exercise.
