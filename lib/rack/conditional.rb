require 'rack/conditional/version'

module Rack
  # Conditional wrapper for Rack middleware.
  class Conditional
    def initialize(app, condition, middleware, *args, &block)
      @app = app
      @condition = condition
      @middleware = middleware.new(app, *args, &block)
    end

    def call(env)
      app = @condition.call(env) ? @middleware : @app
      app.call(env)
    end
  end
end
