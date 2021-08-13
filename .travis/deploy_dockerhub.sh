docker login --username sifubro --password $DOCKER_PASS
docker build -f Dockerfile -t flask_docker_aws_app .
docker tag flask_docker_aws_app sifubro/flask_travis_docker_aws:latest
docker push sifubro/flask_travis_docker_aws:latest