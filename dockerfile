# Latest LTS release at the time of writing
FROM node:16.13.0-alpine3.14

# Setup Nuxt for the container
ENV NUXT_VERSION=2.15.8
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# Create app directory
RUN mkdir -p /var/www
WORKDIR /var/www

# Copy the app into the container
# Note usage of ./../.dockerignore
COPY . /var/www/

# Reduce container layers to save space, along with other tricks that dropped this 500MB+ image down to around ~130MB
# https://dev.to/fbjorn/reducing-docker-image-size-of-a-nuxt-ssr-application-40oe
RUN : \
    && yarn install \
    && yarn build --standalone \
    && rm -rf node_modules \
    && rm package.json \
    && yarn add "nuxt-start@${NUXT_VERSION}" \
    && yarn cache clean \
    && :

# Expose the app port
EXPOSE 3000

# Set the Node prod flag
# THIS MUST BE AFTER THE YARN INSTALLATION
ENV NODE_ENV=production

# Let's goooooooo!
ENTRYPOINT ["npx", "nuxt-start"]
