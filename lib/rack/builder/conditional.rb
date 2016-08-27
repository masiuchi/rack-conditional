require 'rack/conditional'

module Rack
  # Add "use_if" method to Rack::Builder.
  # It's an alias of Rack::Conditional.
  class Builder
    def use_if(condition, middleware, *args, &block)
      use Rack::Conditional, condition, middleware, *args, &block
    end
  end
end
