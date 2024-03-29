source "https://rubygems.org"

ruby "3.0.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.1.4"
# Use postgresql as the database for Active Record
gem "pg"
# Use SCSS for stylesheets
gem "sass-rails"
# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier'
gem "terser"

gem "bootsnap", require: false

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
gem "puma"

gem "awesome_print"

group :development, :test do
  gem "dotenv-rails", "~> 2.1", ">= 2.1.1"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"

  gem "listen"

  gem "rspec_junit_formatter"

  # monitoring
  gem "bullet"
  gem "rack-mini-profiler", require: false
  gem "flamegraph"
  gem "stackprof"
  gem "memory_profiler"

  gem "webmock"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 4.0"

  gem "letter_opener"
end

group :test do
  gem "vcr"
end

# Heroku fix
group :production do
  gem "rack-timeout"
  gem "font_assets"

  # This will enable your application to serve static assets and direct logging to stdout.
  gem "rails_12factor"
end

# file uploades & assets
gem "aws-sdk-s3", require: false

# caching
gem "dalli" # memcache
gem "rack-cache" # http caching

# sidekiq
gem "sidekiq"

# Spree gems
spree_opts = ">= 4.4.0.rc2"
gem "spree", spree_opts
gem "spree_sample", spree_opts
gem "spree_emails", spree_opts
gem "spree_backend", spree_opts
gem "spree_auth_devise"
gem "spree_i18n", ">= 5.0"
gem "spree_dev_tools", require: false, group: %w[test development]

# Custom spree_gateway fork
gem 'spree_gateway', github: 'nightcrawler-/spree_gateway', branch: 'feature/refine-fw-zm'

# Sentry Client
gem "sentry-raven"

# Scout Client
gem "scout_apm"

# Rack CORS Middleware
gem "rack-cors"

# SendGrid
gem "sendgrid-actionmailer"

# logging
gem "remote_syslog_logger"

gem "activerecord-nulldb-adapter"

# improved JSON rendering performance
gem "oj"

# Fix SCSS errors with Ruby 3 on MacOS
gem "sassc", github: "sass/sassc-ruby", group: :development

# Searchkick (Elasticsearch)
gem 'searchkick'

# Related Products
gem 'spree_related_products', github: 'spree-contrib/spree_related_products'

# Multi vendor Created Vendor Admin User with an email "user@vendor.com" and password "vendor123"!
gem 'spree_multi_vendor'

# Reviews
gem 'spree_reviews', github: 'spree-contrib/spree_reviews'

# Use patched version of rave-ruby
gem 'rave_ruby', github: 'nightcrawler-/rave-ruby', branch: 'develop'



