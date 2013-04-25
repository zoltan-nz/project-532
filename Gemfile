source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0.beta1'

#gem 'rails4_upgrade', github: 'alindeman/rails4_upgrade'

gem 'haml'
gem 'haml-rails'

gem 'formtastic'

gem 'bootstrap-sass'
gem 'formtastic-bootstrap'
gem 'bootstrap-datepicker-rails'

gem 'puma'

gem 'crummy'

gem 'awesome_nested_set', github: 'collectiveidea/awesome_nested_set', branch: 'rails4'

gem 'coffee-rails', '~> 4.0.0.beta1' #Have to move outside assets, because wouldn't work in production

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'best_in_place', github: 'szines/best_in_place'

gem 'turbolinks'
gem 'jbuilder', '~> 1.0.1'

gem 'devise'
gem 'figaro'

group :development do
  gem 'sqlite3'
  #more detailed error message
  gem 'better_errors'
  gem 'debugger'
  gem 'binding_of_caller' #Not compatible with jruby
  #for fancy console

  #More details: https://github.com/michaeldv/awesome_print
  #Add your ~/.irbrc file:
  #require "awesome_print"
  #AwesomePrint.irb!
  gem 'awesome_print'

  #More details: https://github.com/cldwalker/hirb
  #Type in your console: Hirb.enable
  #Or extend your ~/.irbrc file with the following:
  #  require 'rubygems'
  #  require 'hirb'
  #  require 'active_record'
  #  Hirb.enable
  #  ActiveRecord::Base.logger = Logger.new(STDOUT)
  gem 'hirb'

  gem 'guard-livereload'
  gem 'rack-livereload'

  gem 'rb-fsevent' if RUBY_PLATFORM.match(/darwin/) or RUBY_PLATFORM.match(/mingw32/)
  gem 'rb-inotify' unless RUBY_PLATFORM.match(/darwin/) or RUBY_PLATFORM.match(/mingw32/)

  # Useful for Rails plugin in Chrome
  gem 'meta_request'

  gem 'paperclip'
end

group :development, :test do
  gem 'quiet_assets'
  gem 'rspec-rails'
end

group :test do

  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'cucumber-rails'
  gem 'launchy'
  gem 'capybara'

  gem 'guard-rspec'
  gem 'paperclip'
end

group :production do
  gem 'pg'
end

# New memcache
gem 'dalli'