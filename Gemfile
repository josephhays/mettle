source 'https://rubygems.org'

# Standard Rails gems
gem 'rails', '4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'pg'

### Gems for prettyiness. Rails apps should be treated like princessess
# Bootstrap
gem 'bootstrap-sass'
gem 'bootstrap-material-design'
# Simple forms gem for better forms and easy boostrap integration.
gem 'simple_form'

# TinyMCE for WYSIWYG editing
gem 'tinymce-rails'

# For environment variables
gem 'figaro'

group :production do
  gem 'unicorn'
end

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'quiet_assets'
  gem 'awesome_print', require: 'ap'
  gem 'meta_request'
  gem 'rails_db'
end
