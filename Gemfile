source 'https://rubygems.org'

# Specify your gem's dependencies in rack-conditional.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.2.2')
  gem 'rack', '>= 1.6.11', '< 2.0.0'
end

gem 'nokogiri', '>= 1.10.8'
