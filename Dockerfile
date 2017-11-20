# Set the version of Github Pages to use for each docs archive
FROM starefossen/github-pages:147

# Set the basic nginx config
COPY ./nginx-overrides.conf /conf/nginx-overrides.conf

# Get some utilities we need for post-build steps
RUN apk update && apk add bash wget subversion

# Print out a message if someone tries to run this image on its own
CMD echo 'This image is only meant to be used as a base image for building docs.'