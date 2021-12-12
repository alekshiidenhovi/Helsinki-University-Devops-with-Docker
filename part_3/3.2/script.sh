#! /bin/bash
ls -lat
printenv

git clone https://github.com/docker-hy/docker-hy.github.io.git
cd docker-hy.github.io

docker login
docker build . -t alekshiidenhovi/docker-3.2
docker push alekshiidenhovi/docker-3.2
