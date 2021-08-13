docker login --username $DOCKER_USER --password $DOCKER_PASS
docker build -f Dockerfile -t flask_docker_aws_app .
docker tag flask_docker_aws_app $DOCKER_USER/flask_travis_docker_aws:latest
docker push $DOCKER_USER/flask_travis_docker_aws:latest