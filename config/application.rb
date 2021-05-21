require_relative "boot"

require "rails/all"
require 'sprockets/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
# Bundler.require(*Rails.groups).herokubundle exec rake -p
Bundler.require(:default, :assets, Rails.env)

module FinanceTracker
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    config.serve_static_assets = true
    config.assets.initialize_on_precompile = false
  
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.action_mailer.default_url_options = { host: 'localhost', port: '3000' }
  end


end
