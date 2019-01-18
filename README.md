# docker-sample

This is a sample application running on a Docker container.

And this is the application that dockerizing [`media-sample-scala`](https://github.com/gifmura/media-sample-scala) app.

## Preface

This application runs on MySQL and a sbt application on their docker container.

## Usage

First of all, You need to install Docker like below.

* CentOS

Reference: https://docs.docker.com/install/linux/docker-ce/centos/

```bash
sudo yum install -y yum-utils \
    device-mapper-persistent-data \
    lvm2
```

* Debian

Reference: https://docs.docker.com/install/linux/docker-ce/debian/

```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
```

*GUI installer is required for Mac or Windows.*

* Mac

Reference: https://docs.docker.com/docker-for-mac/install/

* Windows

Reference: https://docs.docker.com/docker-for-windows/install/

After that, you can start this app like below.

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

## References

* https://docs.docker.com/

* https://github.com/docker/compose
