ruby '2.4.0'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Send Grid Emails
gem 'sendgrid-ruby'


# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'


# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# authentication with oauth
gem 'omniauth', '~> 1.6', '>= 1.6.1'
gem 'omniauth-github', '~> 1.2', '>= 1.2.3'
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-twitter', '~> 1.4'
gem 'omniauth-linkedin', '~> 0.2.0'
gem 'omniauth-google-oauth2', '~> 0.4.1'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-generators', git: 'https://github.com/gstark/bootstrap-generators', branch: 'includes-simplified-controller-scaffold'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'

# Image uploading support with Shrine
gem 'shrine'
gem 'shrine-sql'
gem 'roda'
gem "image_processing"
gem "mini_magick", ">= 4.3.5"

# Kaminari Pagination
gem 'kaminari', :git => "git://github.com/amatsuda/kaminari.git", :branch => 'master'

# Facebook sharing
gem 'social-share-button', '~> 0.10.0'

group :development do
  gem 'awesome_print'
  gem 'dotenv-rails'
end

gem 'refile', github: 'gstark/refile', branch: 'updates-for-rails-5', require: 'refile/rails'
gem 'refile-postgres'
group :production do
  gem 'rails_12factor'
end
