# README

Treasure Data (TD) - Coding Challenge

* Ruby version
<br> Ruby 2.7.6

* System dependencies
\ Postgresql database

* Configuration
\.env variable(s)
\./app/controllers/tokens_controller.rb:      ENV['ACCOUNT_SID'],
\./app/controllers/tokens_controller.rb:      ENV['API_KEY_SID'],
\./app/controllers/tokens_controller.rb:      ENV['API_KEY_SECRET'],
\./app/controllers/tokens_controller.rb:    grant.service_sid = ENV['IPM_SERVICE_SID']
\./bin/bundle:ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
\./config/boot.rb:ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
\./config/database.yml:  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
\./config/database.yml:#     url: <%= ENV['DATABASE_URL'] %>
\./config/database.yml:  password: <%= ENV['TD_RECIPES_DATABASE_PASSWORD'] %>
\./config/environments/production.rb:  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
\./config/environments/production.rb:  if ENV["RAILS_LOG_TO_STDOUT"].present?
\./config/puma.rb:threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
\./config/puma.rb:port        ENV.fetch("PORT") { 3000 }
\./config/puma.rb:environment ENV.fetch("RAILS_ENV") { "development" }
\./config/puma.rb:# workers ENV.fetch("WEB_CONCURRENCY") { 2 }
\./config/secrets.yml:  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
\./spec/rails_helper.rb:ENV['RAILS_ENV'] ||= 'test'


* Database creation
\ Databases:
\ td_recipes_development
\ td_recipes_test
\ td_recipes_production

\ rails db:drop
\ rails db:create
\ rails db:migrate

* Database initialization
\ rails db:seed

* How to run the test suite
\ rspec test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
\ rails s

* ...
