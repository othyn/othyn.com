# othyn.com

[![Continuous Integration](https://github.com/othyn/othyn.com/actions/workflows/ci.yml/badge.svg)](https://github.com/othyn/othyn.com/actions/workflows/ci.yml)
[![Continuous Deployment](https://github.com/othyn/othyn.com/actions/workflows/cd.yml/badge.svg)](https://github.com/othyn/othyn.com/actions/workflows/cd.yml)
[![GitHub license](https://img.shields.io/github/license/othyn/othyn.com)](https://github.com/othyn/othyn.com/blob/main/LICENSE)
[![Love](https://img.shields.io/badge/built%20with-love-red)](https://img.shields.io/badge/built%20with-love-red)

Modernised codebase for my website, replacing the old Laravel app. As my design methodology has changed towards containerised microservices living within K8's, the original Laravel repo was monolithic, hard to containerise and maintain. Thus, the extraction of the original semi-static web content with mild VueJS elements that lead itself perfectly to a small NuxtJS site bundled into an equally small container.

## Development

When developing the site, use the following to get setup and running with a hot reload local environment:

```bash
# Install dependencies
$ yarn install

# Serve with hot reload at localhost:3000
$ yarn dev

# Ensure the code is linted
$ yarn lint
```

For detailed explanation on how things work, check out the [documentation](https://nuxtjs.org). Thought this sentence was best kept in!

## Building the production app image

**The CD GitHub Action should auto build and tag an image for you based on when a new tag is created/pushed**, so you shouldn't need to build the image manually or push it. This will then become [available as part of GitHub's packages feature](https://github.com/othyn/othyn.com/pkgs/container/othyn.com). Just create a tag via a [new GitHub release](https://github.com/othyn/othyn.com/releases) or push a local tag, and it should do the rest.

However, if you do wish to do it, go ahead and run a normal Docker Compose build:

```bash
# Ensure the code is linted
$ yarn lint

# Production container build
$ docker-compose build

# ...or if you're having problems...
$ docker-compose build --no-cache
```

Then push it to a remote container registry of your choice.

### Developing from the app container

I've tried to work it that you can work out of the container, but the more I push it, the more it feels wrong. I would just use Yarn locally, unless you really have to work out of the container, e.g. not wanting a local Yarn install. The `node_modules` directory is ommitted from the volume mount, so you _can_ go ahead and use `docker-compose up -d -V` to work out of the container just fine (`-V` refreshing the anonymous persistent volume so it always uses the latest in the container). **You just won't get any hot reloading for easy development.**
