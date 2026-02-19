# frozen_string_literal: true

ruby '3.3.10'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'pg', '~> 1.5'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.2'

# CSS - sassc-rails replaces sass-rails 5.x (Sprockets 4 compatible)
gem 'sassc-rails'

# Send Grid Emails
gem 'sendgrid-ruby'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Authentication with OAuth (OmniAuth 2.x)
# omniauth-rails_csrf_protection is required for OmniAuth 2.x with Rails
gem 'omniauth', '~> 2.1'
gem 'omniauth-facebook', '~> 9.0'
gem 'omniauth-github', '~> 2.0'
gem 'omniauth-google-oauth2', '~> 1.1'
gem 'omniauth-linkedin-oauth2', '~> 1.0'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'omniauth-twitter', '~> 1.4'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'listen', '~> 3.8'
  gem 'rubocop', require: false
  gem 'web-console', '>= 4.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# bootstrap-sass provides Bootstrap 3 SCSS/JS (was previously pulled in by bootstrap-generators)
gem 'bootstrap-sass', '~> 3.4'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'

# Image uploading support with Shrine
# NOTE: shrine-sql is not compatible with Shrine 3.x — keeping shrine 2.x for now.
# image_processing is pinned to 0.4.x because ImageUploader uses the old include-style API
# (include ImageProcessing::MiniMagick + resize_and_pad). Upgrading to 1.x requires
# rewriting image_uploader.rb to use the builder pattern.
gem 'down', '~> 2.3'
gem 'image_processing', '~> 0.4.1'
gem 'mini_magick', '>= 4.9.5'
gem 'shrine', '~> 2.6'
# shrine-sql removed: switched to file system storage (Rack 3 compatible, no Sequel needed)
# roda removed: only needed for shrine's SQL download endpoint

# Kaminari Pagination
gem 'kaminari'

# Social sharing
gem 'social-share-button'

group :production do
  gem 'rails_12factor'
end
