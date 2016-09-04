require 'rack/conditionable'

module Sinatra
  # Add "use_if" method to Sinatra::Base.
  # It's an alias of Rack::Conditional.
  class Base
    class << self
      include Rack::Conditionable
    end
  end
end
