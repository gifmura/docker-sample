# docker-sample

This is a sample application running on a Docker container.

And this is the application that dockerizing [`media-sample-scala`](https://github.com/gifmura/media-sample-scala) app.

## Preface

This application runs on MySQL and a sbt application on their docker container.

## Usage

You can start this app like below.

```bash
# Run within docker-sample directory.
docker-compose up -d
```

Now you can visit [`localhost:9000`](http://localhost:9000) from your browser.

And you can stop this app like below.

```bash
# Run within docker-sample directory.
docker-compose down -v
```
