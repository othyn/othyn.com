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
$ yarn build
$ yarn start

# Generate static project
$ yarn generate
```

For detailed explanation on how things work, check out the [documentation](https://nuxtjs.org).

## Building the app container

```bash
# Production container build
$ docker-compose build

# ...or if you're having problems...
$ docker-compose build --no-cache
```

### Developing from the app container

I've tried to work it that you can work out of the container, but the more I push it, the more it feels wrong. I would just use Yarn locally, unless you really have to work out of the container, e.g. not wanting a local Yarn install. The `node_modules` directory is ommitted from the volume mount, so you _can_ go ahead and use `docker-compose up -d -V` to work out of the container just fine (`-V` refreshing the anonymous persistent volume so it always uses the latest in the container). **You just won't get any hot reloading for easy development.**

## Special Directories

You can create the following extra directories, some of which have special behaviors. Only `pages` is required; you can delete them if you don't want to use their functionality.

### `assets`

The assets directory contains your uncompiled assets such as Stylus or Sass files, images, or fonts.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/assets).

### `components`

The components directory contains your Vue.js components. Components make up the different parts of your page and can be reused and imported into your pages, layouts and even other components.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/components).

### `layouts`

Layouts are a great help when you want to change the look and feel of your Nuxt app, whether you want to include a sidebar or have distinct layouts for mobile and desktop.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/layouts).

### `pages`

This directory contains your application views and routes. Nuxt will read all the `*.vue` files inside this directory and setup Vue Router automatically.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/get-started/routing).

### `plugins`

The plugins directory contains JavaScript plugins that you want to run before instantiating the root Vue.js Application. This is the place to add Vue plugins and to inject functions or constants. Every time you need to use `Vue.use()`, you should create a file in `plugins/` and add its path to plugins in `nuxt.config.js`.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/plugins).

### `static`

This directory contains your static files. Each file inside this directory is mapped to `/`.

Example: `/static/robots.txt` is mapped as `/robots.txt`.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/static).

### `store`

This directory contains your Vuex store files. Creating a file in this directory automatically activates Vuex.

More information about the usage of this directory in [the documentation](https://nuxtjs.org/docs/2.x/directory-structure/store).
