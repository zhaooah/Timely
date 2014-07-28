require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'sprockets/railtie'
Bundler.require(*Rails.groups)
require "timely"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
#    config.omniauth :google_oauth2,  "995954355701-1tk58btgqpq5kv5dl9e941e3r5ec7f4h.apps.googleusercontent.com", "2Jqhghvq7DHuP4Ll8y9DySLl",{ access_type: "offline", approval_prompt: "force", scope: 'https://www.googleapis.com/auth/calendar.readonly', name: 'google'}

  end
end

