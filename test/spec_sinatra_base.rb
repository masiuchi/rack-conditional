require 'minitest/autorun'
require 'sinatra/base'
require 'sinatra/base/conditional'

describe Sinatra::Base do
  it 'has "use_if" as a class method' do
    _(Sinatra::Base.respond_to?(:use_if)).must_equal true
    _(Sinatra::Base.method_defined?(:use_if)).must_equal false
  end

  it 'has "use" as a class method' do
    _(Sinatra::Base.respond_to?(:use)).must_equal true
    _(Sinatra::Base.method_defined?(:use)).must_equal false
  end
end
