require 'rack/conditionable'

module Rack
  # Add "use_if" method to Rack::Builder.
  # It's an alias of Rack::Conditional.
  class Builder
    include Conditionable
  end
end
