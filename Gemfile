source 'https://rubygems.org'

gem 'rails', '~> 4.2.5'
gem 'pg'
gem 'puma'

gem 'sass-rails', '~> 5.0.1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'foundation-rails', '~> 5.0'
gem 'haml'
gem 'carrierwave'
gem 'mini_magick'
gem "fog", "~> 1.3"
gem 'actionview-encoded_mail_to'
gem 'wysihtml5x-rails'
gem 'newrelic_rpm'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-bundler', require: false
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara'
  gem 'shoulda-matchers'
end

group :production, :staging do
  gem 'rails_12factor'
end
