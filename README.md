# Nginx + PHP-FPM 7.4.x + Composer built on Ubuntu 18.04 (Bionic) image

## Introduction

This is a Dockerfile to build a ubuntu based container image running nginx and php-fpm 7.4.x & Composer.

### Versioning

| Docker Tag | GitHub Release | Nginx Version | PHP Version | Ubuntu Version |
|-----|-------|-----|--------|--------|
| latest | master Branch |1.17.9 | 7.4.3 | bionic |
| php73 | php73 Branch |1.17.9 | 7.3.15 | bionic |
| php72 | php72 Branch |1.17.9 | 7.2.28 | bionic |

## Building from source

To build from source you need to clone the git repo and run docker build:

```bash
git clone https://github.com/jniltinho/nginx-php-fpm.git
cd nginx-php-fpm
```

followed by

```bash
docker build -t nginx-php-fpm:latest . # PHP 7.4.x
```


or

```bash
docker build -t nginx-php-fpm:php74 . # PHP 7.4.x
```


## Pulling from Docker Hub

```bash
docker pull jniltinho/nginx-php-fpm:latest
```

## Running

To run the container:

```bash
sudo docker run -d -p 8080:80 jniltinho/nginx-php-fpm:latest
```

Default web root:

```bahs
/usr/share/nginx/html
```
