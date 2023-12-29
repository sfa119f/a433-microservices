# create docker image
docker build -t ghcr.io/sfa119f/karsajobs-ui:latest .

# login GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u USERNAME --password-stdin

# upload image to GitHub Packages
docker push ghcr.io/sfa119f/karsajobs-ui:latest