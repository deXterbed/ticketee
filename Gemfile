source 'https://rubygems.org'

ruby "1.9.3"

gem 'rails', '3.2.13'

group :development do
  gem 'sqlite3'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'webrick', '~> 1.3.1'
end

group :production do
  gem 'pg'
end
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'dynamic_form'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'neifelheim-forem','~> 0.0.2', :require => "forem"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
group :test, :development do
  gem 'rspec-rails', '~> 2.5'
  gem 'gmail'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'email_spec'
  gem 'launchy'
  gem 'selenium-webdriver'
end

gem 'devise', :git => 'git://github.com/plataformatec/devise.git'
gem 'cancan', '1.6.7'
gem 'paperclip', '2.8.0'
gem 'searcher'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'foreman'
gem 'kaminari'
gem 'interactive_editor'
gem 'quiet_assets'
gem 'delayed_job_active_record'
gem "daemons"
