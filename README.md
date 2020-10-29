# `patrick-remy.dev`

Source of my personal static generated website at [patrick-remy.dev](http://patrick-remy.dev), build with [hugo](https://gohugo.io).

## Build and run 🚀

Ensure to use `git clone --recurse-submodules` or run `git submodule update --init` to fetch the theme submodule.

### Development use
```sh
cd dockerfiles
docker-compose up -d --no-deps
```

### Production use
```sh
docker build . -f dockerfiles/production.dockerfile -t patrick-remy-website
docker run -p 80:80 -d --name website patrick-remy-website
```
