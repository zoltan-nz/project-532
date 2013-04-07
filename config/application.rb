require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

module Project532
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs false
      g.helpers_specs false
      g.stylesheets = false
      g.javascript = false
      g.helper = false
    end

    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

    config.autoload_paths += %W(#{config.root}/lib/extras)
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
