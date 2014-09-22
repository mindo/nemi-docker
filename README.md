# NEMI docker web app

*Website: http://nemi.me

Web app that will scale automatically across several containers

## Quick start

Containers:
- nemi:trusty 	= ubuntu:trusty + serf ( http://www.serfdom.io )
- nginx-phpfpm 	= nemi:trusty + nginx + php-fpm
- percona	= nemi:trusty + percona

## Docs

- build docker images:

```
$ docker build -t nemi:trusty  .
```
