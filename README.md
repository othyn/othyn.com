# othyn.com

Modernised codebase for my website, replacing the old Laravel app. As my design methodology has changed towards containerised microservices living within K8's, the original Laravel repo was monolithic, hard to containerise and maintain. Thus, the extraction of the original semi-static web content with mild VueJS elements that lead itself perfectly to a small NuxtJS site bundled into an equally small container.

## Creating the repo

```bash
$ yarn create nuxt-app othyn.com
...
create-nuxt-app v3.7.1
✨  Generating Nuxt.js project in othyn.com
? Project name: othyn.com
? Programming language: TypeScript
? Package manager: Yarn
? UI framework: None
? Nuxt.js modules: (Press <space> to select, <a> to toggle all, <i> to invert selection)
? Linting tools: ESLint, Prettier
? Testing framework: None
? Rendering mode: Universal (SSR / SSG)
? Deployment target: Server (Node.js hosting)
? Development tools: (Press <space> to select, <a> to toggle all, <i> to invert selection)
? Continuous integration: GitHub Actions (GitHub only)
? What is your GitHub username? othyn
? Version control system: Git
...
```

## Building and running the app locally

```bash
# Install dependencies
$ yarn install

# Serve with hot reload at localhost:3000
$ yarn dev

# Build for production and launch server
$ yarn lint
$ yarn build
$ yarn start

# Generate static project
$ yarn generate
```

For detailed explanation on how things work, check out the [documentation](https://nuxtjs.org).

## Building the app container

```bash
# Ensure the code is linted
$ yarn lint

# Production container build
$ docker-compose build

# ...or if you're having problems...
$ docker-compose build --no-cache
```

### Developing from the app container

I've tried to work it that you can work out of the container, but the more I push it, the more it feels wrong. I would just use Yarn locally, unless you really have to work out of the container, e.g. not wanting a local Yarn install. The `node_modules` directory is ommitted from the volume mount, so you _can_ go ahead and use `docker-compose up -d -V` to work out of the container just fine (`-V` refreshing the anonymous persistent volume so it always uses the latest in the container). **You just won't get any hot reloading for easy development.**
