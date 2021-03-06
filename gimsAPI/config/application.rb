require_relative 'boot'

require 'rails/all'

# These are rails frameworks. We have to pick them
#require "active_model/railtie"
#require "active_job/railtie"
require "active_record/railtie"
#require "action_controller/railtie"
#require "action_mailer/railtie"
#require "action_view/railtie"
#require "action_cable/engine"
#require "sprockets/railtie"
#require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GimsAPI
	class Application < Rails::Application
		# Initialize configuration defaults for originally generated Rails version.
		config.load_defaults 5.1

		# Settings in config/environments/* take precedence over those specified here.
		# Application configuration should go into files in config/initializers
		# -- all .rb files in that directory are automatically loaded.
		config.api_only = true
	    config.assets.initialize_on_precompile = false

		#config.middleware.use ActionDispatch::Cookies
    	#config.middleware.use ActionDispatch::Session::CookieStore, key: '_coookie_name', expire_after: 30.days

	end
end
