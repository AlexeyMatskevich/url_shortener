source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "~> 6.1.3"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem "active_interaction", "~> 4.0"
gem "jsonapi.rb", "~> 1.7"
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development do
  gem "listen", "~> 3.3"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
end

group :development, :test do
  gem "standard", "~> 1.0"
  gem "pry", "~> 0.14.0"
  gem "crystalball", "~> 0.7.0"
  gem "database_consistency", "~> 0.8.13"
  gem "bundler-audit", "~> 0.7.0"
  gem "brakeman", "~> 5.0"
  gem "git", "~> 1.8"
  gem "amazing_print", "~> 1.2", git: "https://github.com/amazing-print/amazing_print"
  gem "rspec-rails", "~> 4.0"
  gem "rspec-openapi", "~> 0.3.14"
  gem "factory_bot_rails", "~> 6.1"
  gem "rubocop", "~> 1.11"
  gem "rubocop-rspec", "~> 2.2"
  gem "rubocop-rails", "~> 2.9"
  gem "rubycritic", "~> 4.6"
  gem "super_diff", "~> 0.6.1"
  gem "fasterer", "~> 0.9.0"
  gem "faker", "~> 2.16"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
