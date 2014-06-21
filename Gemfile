source 'https://rubygems.org'

ruby '2.1.2'
gem 'rails', '3.2.12'

gem 'pg', :group => [:production]
gem 'geocoder'
gem 'devise'
gem 'cancan'
gem 'haml-rails'
gem 'sass-rails',   '~> 3.2.3'
gem 'high_voltage'
gem 'gmaps4rails'
gem 'tinymce-rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :developemt do
  gem 'thin'
  gem 'foreman'
end

#testing with rspec

gem 'rspec-rails', group: [:development, :test]

group :test do
  gem 'capybara'
  gem "factory_girl_rails"
  gem 'database_cleaner'
  gem "email_spec"
end

gem 'htmlentities'
