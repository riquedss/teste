# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'rails', '~> 7.0.3'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'devise_token_auth', '>= 1.2.0', git: 'https://github.com/lynndylanhurley/devise_token_auth'

gem 'active_model_serializers', '~> 0.10.13'

gem 'jwt', '~> 2.4'

gem 'cancancan', '~> 3.4'

gem 'tzinfo-data', '~> 2.0', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', '~> 1.12', require: false

gem 'rack-cors', '~> 1.1'

group :development, :test do
  gem 'bundler-audit', '~> 0.9.1'
  gem 'byebug', '~> 11.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot', '~> 6.2', '>= 6.2.1'
  gem 'faker', '~> 2.21'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  gem 'rubocop', '~> 1.31', '>= 1.31.2', require: false
  gem 'rubocop-performance', '~> 1.14', '>= 1.14.2'
  gem 'rubocop-rails', '~> 2.15', '>= 2.15.2'
  gem 'rubocop-rspec', '~> 2.12', '>= 2.12.1'
end

group :development do
  gem 'brakeman', '~> 5.2', '>= 5.2.3'
end

group :test do
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', '~> 0.21.2'
end
