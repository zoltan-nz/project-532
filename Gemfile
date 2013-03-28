source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0.beta1'

#gem 'rails4_upgrade', github: 'alindeman/rails4_upgrade'

gem 'haml'
gem 'haml-rails'

gem 'bootstrap-sass'
gem 'formtastic-bootstrap'
gem 'bootstrap-datepicker-rails'

gem 'formtastic'

gem 'puma'

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'

gem 'devise'
gem 'figaro'

group :development do
  gem 'sqlite3', '1.3.7'
  #more detailed error message
  gem 'better_errors'
  gem 'debugger'
  gem 'binding_of_caller' #Not compatible with jruby
  #for fancy console
  gem 'awesome_print'
  gem 'hirb'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'quiet_assets'
end

group :test do
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'cucumber-rails'
  gem 'launchy'
  gem 'capybara'
end

group :production do
  gem 'pg'
end