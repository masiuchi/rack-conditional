require 'minitest/autorun'

if defined? Rails::Configuration::MiddlewareStackProxy
  require 'rails/configuration'
  require 'rails/configuration/conditional'

  describe Rails::Configuration::MiddlewareStackProxy do
    it 'has "use_if" method' do
      described_class.method_defined?(:use_if).must_equal true
    end
  end
end
