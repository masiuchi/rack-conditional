# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/conditional/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-conditional'
  spec.version       = Rack::Conditional::VERSION
  spec.authors       = ['Masahiro Iuchi']
  spec.email         = ['masahiro.iuchi@gmail.com']

  spec.summary       = 'Conditional wrapper for Rack middleware.'
  spec.description   = 'Conditional wrapper for Rack middleware. '\
                     + 'This is a port of Plack::Middleware::Conditional.'
  spec.homepage      = 'https://github.com/masiuchi/rack-conditional'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.require_paths = ['lib']

  if RUBY_VERSION >= '2.2.2'
    spec.add_dependency 'rack', '~> 2.0.1'
  else
    spec.add_dependency 'rack', '~> 1.6.4'
  end

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'minitest', '~> 5.9.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
