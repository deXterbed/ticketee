# Load the rails application
require File.expand_path('../application', __FILE__)

Ticketee::Application.configure do
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
end

# Initialize the rails application
Ticketee::Application.initialize!
