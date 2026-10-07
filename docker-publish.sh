#!/bin/bash
set -euo pipefail

DOCKER_SCOPE=${DOCKER_USERNAME:-"mastermindzh"}

VERSION=$(grep version package.json | head -1 | awk -F: '{ print $2}' | sed 's/[\",]//g' | tr -d '[[:space:]]')
NAME=$(grep name package.json | head -1 | awk -F: '{ print $2}' | sed 's/[\",]//g' | tr -d '[[:space:]]')

TAGS=(
    "latest"
    "$VERSION"
)

# Never overwrite an already published version, the bump is the release.
if docker manifest inspect "$DOCKER_SCOPE/$NAME:$VERSION" > /dev/null 2>&1; then
    echo "$DOCKER_SCOPE/$NAME:$VERSION already exists, bump the version in package.json to release."
    exit 0
fi

docker build -t "$DOCKER_SCOPE/$NAME:latest" .

for tag in "${TAGS[@]}"; do
    docker tag "$DOCKER_SCOPE/$NAME:latest" "$DOCKER_SCOPE/$NAME:$tag"
    docker push "$DOCKER_SCOPE/$NAME:$tag"
done
