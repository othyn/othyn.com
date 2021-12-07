# ----- ----- -----
#  Stage -- Build
# ----- ----- -----

# Latest LTS release at the time of writing
FROM node:16.13.0-alpine3.14 AS build

# Create a working directory
RUN mkdir -p /working
WORKDIR /working

# Note the projects ./.dockerignore
COPY . /working

# Build the app
# Individual commands/layers to aid with debugging the build process, as we aren't using this container anyway
RUN yarn install
RUN yarn generate

# ----- ----- -----
#  Stage -- Production
# ----- ----- -----

# Latest release at the time of writing
FROM nginx:1.21.4-alpine AS production

# NGINX container hosted directory
WORKDIR /usr/share/nginx/html

# Copy across the static generated NuxtJS build fragment from the build image
COPY --from=build /working/dist ./
