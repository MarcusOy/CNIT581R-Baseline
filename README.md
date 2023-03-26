# Baseline Repository for CNIT581 Research

This repository is from the [Nodejs documentation](https://nodejs.org/en/docs/guides/nodejs-docker-webapp).

Build this repository as a Docker image:

```
docker build . -t <your username>/node-web-app
```

Run the built Docker image:

```
docker run -p 49160:8080 -d <your username>/node-web-app
```
