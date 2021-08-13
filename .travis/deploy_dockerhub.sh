docker login --username $DOCKER_USER --password $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
TAG="latest"
else
TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t flask_docker_aws_app .
docker tag flask_docker_aws_app $DOCKER_REPO:latest
docker push $DOCKER_REPO:latest