# create docker image
docker build -t item-app:v1 .

# show list docker image in local
docker image ls

# change image name
docker tag item-app:v1 ghcr.io/sfa119f/item-app:v1

# login GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u USERNAME --password-stdin

# upload image to GitHub Packages
docker push ghcr.io/sfa119f/item-app:v1
