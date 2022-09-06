# README

Treasure Data (TD) - Coding Challenge

* Ruby version
<br> Ruby 2.7.6

* System dependencies
<br> Postgresql database

* Configuration
<br>.env variable(s)
<br>./app/controllers/tokens_controller.rb:      ENV['ACCOUNT_SID'],
<br>./app/controllers/tokens_controller.rb:      ENV['API_KEY_SID'],
<br>./app/controllers/tokens_controller.rb:      ENV['API_KEY_SECRET'],
<br>./app/controllers/tokens_controller.rb:    grant.service_sid = ENV['IPM_SERVICE_SID']
<br>./bin/bundle:ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
<br>./config/boot.rb:ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
<br>./config/database.yml:  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
<br>./config/database.yml:#     url: <%= ENV['DATABASE_URL'] %>
<br>./config/database.yml:  password: <%= ENV['TD_RECIPES_DATABASE_PASSWORD'] %>
<br>./config/environments/production.rb:  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
<br>./config/environments/production.rb:  if ENV["RAILS_LOG_TO_STDOUT"].present?
<br>./config/puma.rb:threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
<br>./config/puma.rb:port        ENV.fetch("PORT") { 3000 }
<br>./config/puma.rb:environment ENV.fetch("RAILS_ENV") { "development" }
<br>./config/puma.rb:# workers ENV.fetch("WEB_CONCURRENCY") { 2 }
<br>./config/secrets.yml:  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
<br>./spec/rails_helper.rb:ENV['RAILS_ENV'] ||= 'test'


* Database creation
<br> Databases:
<br> td_recipes_development
<br> td_recipes_test
<br> td_recipes_production

<br> bundle install
<br> rails db:drop
<br> rails db:create
<br> rails db:migrate

* Database initialization
<br> rails db:seed

* How to run the test suite
<br> rspec test

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
<br> rails s

* ...
