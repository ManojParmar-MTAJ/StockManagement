require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StockManagement
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.to_prepare do
      Devise::SessionsController.layout 'guest'
      Devise::PasswordsController.layout 'guest'
      Devise::RegistrationsController.layout proc { |controller| user_signed_in? ? 'application' : 'guest' }
      Devise::ConfirmationsController.layout 'guest'
    end
  end
end
