source "https://rubygems.org"

gem "rails", "~> 7.2.2"
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
gem "jquery-rails", "~> 4.6"


group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "6.1.3"
end

group :development do
  gem "web-console"
  gem "error_highlight", "0.3.0"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 6.2"
  gem "database_cleaner", "~> 2.0"
  gem "factory_bot_rails", "~> 6.4"
  gem "rails-controller-testing", "~> 1.0"
end
