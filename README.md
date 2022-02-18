# Spree Store - ZM

This a dockerized [Spree Commerce](https://spreecommerce.org) application ready to for local development and deployment to cloud providers.

## Deploy in the cloud

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

<a href="https://render.com/deploy?repo=https://github.com/spree/spree_starter/tree/main">
  <img src="https://render.com/images/deploy-to-render-button.svg" alt="Deploy to Render" height=32>
</a>

## Local Installation

### Using Docker (Recommended)
#### Install required tools and dependencies:

  * [Docker](https://www.docker.com/community-edition#/download)

#### Run setup script

```bash
bin/setup
```

This will automatically launch the application at `http://localhost:4000/admin`

#### (Optional) Import sample data such as products, categories, etc

```bash
docker-compose run web rake spree_sample:load
```

#### Launching local server

```bash
docker-compose up
```

### Without Docker (not recommended for beginners)

#### Install required tools and dependencies

1. HomeBrew - https://brew.sh/
2. Install required packages

      ```bash
      brew install gpg postgresql redis imagemagick
      createuser -P -d postgres
      ```

3. RVM - https://rvm.io/
4. NVM - https://github.com/nvm-sh/nvm
5. Ruby - `rvm install 3.0.2`
6. Node - `nvm install`
7. Yarn - `npm -g install yarn`

#### Run setup script

```bash
bin/setup-no-docker
```

## Adding Storefront

Spree is a [headless e-commerce platform](https://dev-docs.spreecommerce.org/getting-started/headless-commerce) which you can use with any storefront you like. We have pre-built integrations with:

* [Next.js Commerce](https://dev-docs.spreecommerce.org/storefronts/next.js-commerce)
* [Vue Storefront](https://dev-docs.spreecommerce.org/storefronts/vue-storefront)

## Updating

### Connect to the docker container
```bash
docker-compose run web bash
```

### Run update commands

```
bundle update
bin/rails spree:install:migrations
bin/rails db:migrate
```

For additional instructions please visit [Spree Upgrade Guides](https://dev-docs.spreecommerce.org/upgrades)

## Development

### Launching rails console

```bash
docker-compose run web rails c
```

### Launching bash console

```bash
docker-compose run web bash
```

## Customization
### Adding new gems

Update `Gemfile` and run

```bash
bundle install
docker-compose build
```

You will need to restart the server if running:

```bash
docker-compose restart
```

## Environment variables

| variable | description | default value |
|---|---|---|
| DEBUG_ASSETS | Enables/disables [asset debugging in development](https://guides.rubyonrails.org/asset_pipeline.html#turning-debugging-off) | false |
| DB_POOL | database connection pool | 5 |
| MEMCACHED_POOL_SIZE | memcache connection pool | 5 |
| SENDGRID_API_KEY | API key to interface Sendgrid API | |

# This Particular Repo

## Notes

Before deployment on Heroku, make sure to pre-provision the database:

```bash
heroku addons:create heroku-postgresql:hobby-dev -a <app-name>
```

Then follow up with the usual `db:migrate db seed`

To load sample data:

```bash
heroku run rake spree_sample:load -a <app name>
```

### spree_related_products

Available from the edit Product section on the Admin console. More from the [docs](https://github.com/spree-contrib/spree_related_products)