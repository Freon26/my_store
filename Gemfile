source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails_12factor', group: :production

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
#gem 'rails', '3.2.13'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

group :production do
  gem 'pg'
end        

group :development, :test do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
#gem 'jquery-rails', '~> 2.0'
gem 'jquery-rails' 

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'spree', github: 'spree/spree', :branch => '2-1-stable'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-1-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-1-stable'

gem 'spree_fancy', :git => 'git://github.com/spree/spree_fancy.git', :branch => '2-1-stable'
gem 'spree_static_content', :github => 'spree/spree_static_content', :branch => '2-1-stable'
#gem 'spree_reviews', github: 'spree/spree_reviews', :branch => '2-1-stable'
#gem 'spree_wishlist', :git => 'git://github.com/spree/spree_wishlist.git', :branch => '2-1-stable'
#gem 'spree_email_to_friend', :git => 'git://github.com/spree/spree_email_to_friend.git', :branch => '2-1-stable'
#gem 'spree_social', :git => 'git://github.com/spree/spree_social.git'#, :branch => '2-1-stable'