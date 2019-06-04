source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.6"
gem "mysql2", ">= 0.3.18", "< 0.6.0"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "rubocop", require: false
gem "rubocop-rspec"
gem "slim-rails"
gem "seed-fu", "~> 2.3"
gem "draper"

gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

group :development, :test do
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "dotenv-rails", require: "dotenv/rails-now"
  gem "config"
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "pry-rails"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]