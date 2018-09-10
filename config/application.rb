require_relative 'boot'

require 'rails/all'

# require 'dotenv/load'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UnitedWay
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.active_job.queue_adapter = :sidekiq

    config.action_mailer.deliver_later_queue_name = 'default'
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local

    Dotenv::Railtie.load

    HOSTNAME = ENV['HOSTNAME']

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
