docker login --username $DOCKER_USER --password $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
TAG="latest"
else
TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG .
docker tag $TRAVIS_REPO_SLUG $DOCKER_REPO:$TAG
docker push $DOCKER_REPO:$TAG