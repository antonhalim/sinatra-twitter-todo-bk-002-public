ENV['SINATRA_ENV'] ||= "development"

# here we're using bundler to require all of our dependencies in the Gemfile
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# requiring the app.rb file:
require './app'

require_all 'models'
# what's this require_all? we're using a gem that helps us easily require files in a simple way. Before you've probably seen things like "require File.dirname(__FILE__)". This just simplifies that. In this case, it looks for directory called models and finds all of them.