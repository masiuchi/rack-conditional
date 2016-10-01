require 'rack/conditionable'

module Rails
  module Configuration
    # Add "use_if" method to Rails.
    # It's an alias of Rack::Conditional.
    class MiddlewareStackProxy
      include ::Rack::Conditionable
    end
  end
end
