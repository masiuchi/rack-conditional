require 'minitest/autorun'
require 'rack/builder'
require 'rack/builder/conditional'
require 'rack/lint'

# For test.
class TestMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  end
end

describe Rack::Builder do
  it 'can use "use_if"' do
    test_app = app
    test_app.must_be_instance_of Rack::Conditional
    test_app.instance_variable_get('@app').must_be_instance_of Proc
    test_app
      .instance_variable_get('@middleware').must_be_instance_of TestMiddleware
  end

  private

  def app
    Rack::Builder.new do
      use_if proc { true }, TestMiddleware
      run proc { [200, { 'Content-Type' => 'text/plain' }, ['It works!']] }
    end.to_app
  end
end
