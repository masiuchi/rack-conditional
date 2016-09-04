require 'rack/builder/conditional'
require 'sinatra/base/conditional' if defined? Sinatra::Base
require 'rails/configuration/conditional' \
  if defined? Rails::Configuration::MiddlewareStackProxy
