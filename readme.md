## Content

Update content in the data folder and locale/en.yaml

## Deploy

Website is a static site deployed to Amazon S3. You can deploy in two steps:

1) Build

```bash
$ bundle exec middleman build
```

2) Publish

```bash
$ bundle exec middleman s3_sync


###Notes:

Initialized by `$ middleman init path_to_project --template=middleman-haml` from clone **middleman-haml** into `~/.middleman`.
```$ git clone git@github.com:jonlunsford/middleman-haml.git ~/.middleman/middleman-haml```