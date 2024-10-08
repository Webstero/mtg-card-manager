source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "tailwindcss-rails", "~> 2.7"
gem "kaminari", "~> 1.2"
gem "devise", "~> 4.9"
gem "faker", "~> 3.2"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "error_highlight", "~> 0.6", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "rspec-rails", "6.1.3"
  gem "shoulda-matchers", "~> 6.2"
  gem "database_cleaner"
  gem "factory_bot_rails"
end
