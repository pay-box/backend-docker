# Dockerized Pay Box


[![DockerHub](https://img.shields.io/docker/pulls/thesinner/pay-box.svg)](https://hub.docker.com/r/thesinner/pay-box) [![Travis](https://travis-ci.org/pay-box/backend.svg?branch=master)](https://travis-ci.org/pay-box/backend#) ![Commit](https://img.shields.io/github/last-commit/pay-box/backend)

Pay Box is a service for handling payments with multiple gateways.
Currently supported gateways are:

- [x] [Bahamta](https://bahamta.com)
- [ ] Zarin pal
- [ ] Sep (Saman Bank)
- [ ] AP (Asan Pardakht)
- [ ] Eghtesad Novin
- [ ] Mellat
- [ ] Paypal

## Usage

### Run with docker (Recommended)
You can pull [docker image from docker hub](https://hub.docker.com/r/thesinner/pay-box) and run it with `docker-compose` like this:

```
$ cd docker
$ export PUBLISHED_PORT=6000
$ docker-compose run -d api
```

### Run as a Django project
You can pull [Django standalone repo](https://github.com/pay-box/backend) and run it with as a Django project. Read more in [this repo](https://github.com/pay-box/backend).



## Contribution
Any idea is very welcomed, feel free to contribute your or other's ideas.
To submit ideas, please submit an issue with `idea` tag and if its an improvement, tag it with `improvement` or if its a bug, tag it with `bug`.
if you have fixed an issue, please send a PR and I merge it if it's possible.