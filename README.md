
⚠️ This repository is now archived!
Please use https://github.com/shivammathur/setup-php#wrench-tools-support to setup composer-unused inside your github workflows.

---

# GithubAction for composer-unused

## Usage

You can use it as a Github Action like this:

_.github/workflows/scan.yml_
```
on: [push, pull_request]
name: Scan
jobs:
  composer-unused:
    name: ComposerUnused
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: ComposerUnused
        uses: docker://icanhazstring/composer-unused-ga
```

**You can copy/paste the .github folder (under examples/) to your project and thats all!**

## Docker

A Docker-Image is built automatically and located here:
https://hub.docker.com/r/icanhazstring/composer-unused-ga

You can run it in any given directory like this:

`docker run --rm -it -w=/app -v ${PWD}:/app icanhazstring/composer-unused-ga:latest`
