source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0.rc2'
gem 'haml'
gem 'haml-rails'
gem 'dalli'
gem 'formtastic'
gem 'bootstrap-sass'
gem 'formtastic-bootstrap'
gem 'bootstrap-datepicker-rails'
gem 'puma'
gem 'crummy'
gem 'awesome_nested_set', github: 'collectiveidea/awesome_nested_set', branch: 'rails4'
gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails', '4.0.0.rc2'
gem 'uglifier'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'best_in_place', github: 'szines/best_in_place'
gem 'turbolinks'
gem 'jbuilder'
gem 'devise', github: 'plataformatec/devise', branch: 'rails4'
gem 'figaro'
gem 'paperclip'
gem 'jquery-fileupload-rails'

gem 'nested_form'

gem 'simple_form', '~> 3.0.0.rc'

gem 'acts-as-taggable-on'

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'debugger'
  gem 'binding_of_caller'
  gem 'awesome_print'
  gem 'hirb'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'rb-fsevent' if RUBY_PLATFORM.match(/darwin/) or RUBY_PLATFORM.match(/mingw32/)
  gem 'rb-inotify' unless RUBY_PLATFORM.match(/darwin/) or RUBY_PLATFORM.match(/mingw32/)
  gem 'meta_request'

  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-remote'

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