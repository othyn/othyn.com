# othyn.com

[![Lint](https://github.com/othyn/othyn.com/actions/workflows/00-lint.yml/badge.svg)](https://github.com/othyn/othyn.com/actions/workflows/00-lint.yml)
[![Build and Push GitHub Pages](https://github.com/othyn/othyn.com/actions/workflows/01-pages.yml/badge.svg)](https://github.com/othyn/othyn.com/actions/workflows/01-pages.yml)
[![GitHub license](https://img.shields.io/github/license/othyn/othyn.com)](https://github.com/othyn/othyn.com/blob/main/LICENSE)
[![Love](https://img.shields.io/badge/built%20with-love-red)](https://img.shields.io/badge/built%20with-love-red)

Modernised codebase for my website, replacing the old Laravel app. As my design methodology has changed towards containerised microservices living within K8's, the original Laravel repo was monolithic, hard to containerise and maintain. Thus, the extraction of the original semi-static web content with mild VueJS elements that lead itself perfectly to a small NuxtJS site bundled into an equally small container.

Can be found at:

- [othyn.com](https://othyn.com/)
- [ben.tindall.rocks](https://ben.tindall.rocks/) (and subsequently [tindall.rocks](https://tindall.rocks/))
- [bentindall.uk](https://bentindall.uk/)

---

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

---

## Building the production app image

**The CD GitHub Action should auto build and tag an image for you based on when a new tag is created/pushed**, so you shouldn't need to build the image manually or push it. This will then become [available as part of GitHub's packages feature](https://github.com/othyn/othyn.com/pkgs/container/othyn.com). Just create a tag via a [new GitHub release](https://github.com/othyn/othyn.com/releases) or push a local tag, and it should do the rest.

However, if you do wish to do it, go ahead and run a normal Docker Compose build:

```bash
# Ensure the code is linted
$ yarn lint

# Production container build
$ docker compose build

# ...or if you're having problems...
$ docker compose build --no-cache
```

Then push it to a remote container registry of your choice. There should be no requirement to develop from the app container itself, however if you wish to, knock yourself out! You can navigate to [http://localhost:8888](http://localhost:8888) to view the container once up'd, or which ever port you defined in `./docker-compose.yml` against the `com.othyn.app` service.

For manually building a static Nuxt output, here is a [handy list of commands](https://nuxtjs.org/announcements/going-full-static/#commands);

```bash
# Start the development server (static aware)
$ yarn dev

# Bundle your Nuxt application for production if needed (static aware) and export your application to static HTML in `dist/` directory
$ yarn generate

# Serve your production application from `dist/`
$ yarn start
```

---

## Todo

Roadmap for things I would like to change over time.

### Additions

- Add a new area for blog entries to talk about passion projects and share knowledge, as I've been told I'm really good at distilling complex topics and making them easily digestable and bridging the communication gap into non-technical and leadership roles.
- Add a new area for a photography portfolio as I really would like to share a few images with the world.

### Changes

- Change `history | grep me` into tabbed sections going over my key interest pillars; career, hardware, networking, cars, photography.

---

## Changelog

Any and all project changes for releases should be documented below. Versioning follows the SEMVER standard.

---

### Version 1.1.1

[[Git Changes]](https://github.com/othyn/othyn.com/compare/v1.1.0...v1.1.1) Alteration of skills.

#### Added

- More easter eggs. It's the time of year!

#### Changed

- Altered the skills section to add up to date skills
- Presentation of skills has been updated to be a much better visual representation

#### Fixed

- Nothing.

#### Removed

- Discord from social

---

### Version 1.1.0

[[Git Changes]](https://github.com/othyn/othyn.com/compare/v1.0.0...v1.1.0) Re-containerisation into a static NuxtJS image served by NGINX, this will significantly shrink the image and hosting overhead for such a simple site.

#### Added

- More info on history, in reality this needs a refresh into catagories as there are areas I would like to expand into.

#### Changed

- Changed NuxtJS config and Docker image setup to run instead from Nuxt static mode.
- All files are now fixed with prettier.

#### Fixed

- Component loading in the layouts was a bug I think with a perhaps reserved keyword `Global` being the prefix, once changing this to `Core` the issue went away.

#### Removed

- Twitter link in bio as I can't remember the last time I actually went on it.

---

### Version 1.0.0

[[Git Changes]](https://github.com/othyn/othyn.com/compare/v1.0.0-beta.1...v1.0.0) Initial release.

#### Added

- Everything

#### Changed

- Everything

#### Fixed

- Everything

#### Removed

- Everything
