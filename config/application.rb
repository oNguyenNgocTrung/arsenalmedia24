require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Arsenalmedia24
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.{rb,yml}"]
    config.autoload_paths << Rails.root.join("lib")
    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    I18n.available_locales = [:en, :vi]
    config.time_zone = "London"
    config.i18n.default_locale = :en

    Dir.glob("config/routes/*").each do |route|
      config.paths["config/routes.rb"] << Rails.root.join(route)
    end

    config.to_prepare do
      Devise::SessionsController.layout "devise"
      Devise::RegistrationsController.layout "devise"
      Devise::PasswordsController.layout "devise"
      Devise::ConfirmationsController.layout "devise"
      Devise::UnlocksController.layout "devise"
    end
  end
end
