# NEMI docker web app

* Website: http://nemi.me

Web app that will scale automatically across several containers

## Quick start

Containers:
- nemi:trusty 	= ubuntu:trusty + serf ( http://www.serfdom.io )
- nemi:web 	= nemi:trusty + nginx + php-fpm
- nemi:sql	= nemi:trusty + percona

## Docs

- build docker images:

```
$ docker build -t nemi:trusty  .
```
