require 'minitest/autorun'
require 'rack/conditional'
require 'rack/lint'
require 'rack/mock'

# For test.
class TestMiddleware
  attr_reader :called

  def initialize(app)
    @app = app
  end

  def call(env)
    @called = true
    @app.call(env)
  end
end

describe Rack::Conditional do
  it 'executes middleware' do
    condition = proc { |env| env['X_TEST_HEADER'] == 'true' }
    conditional = Rack::Conditional.new(app, condition, TestMiddleware)
    Rack::Lint.new(conditional).call(request)
    conditional.instance_variable_get('@middleware').called.must_equal true
  end

  it 'does not execute middleware' do
    condition = proc { |env| env['X_TEST_HEADER'] == 'false' }
    conditional = Rack::Conditional.new(app, condition, TestMiddleware)
    Rack::Lint.new(conditional).call(request)
    conditional.instance_variable_get('@middleware').called.must_be_nil
  end

  private

  def request
    Rack::MockRequest.env_for('/', 'X_TEST_HEADER' => 'true')
  end

  def app
    proc { [200, { 'Content-Type' => 'text/plain' }, ['Hello, World!']] }
  end
end
