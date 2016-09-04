source 'https://rubygems.org'

# Specify your gem's dependencies in rack-conditional.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.2.2')
  gem 'rack', '>= 1.6.4', '< 2.0.0'
end

group :development do
  if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('1.9.2')
    gem 'mime-types', '< 2.3'
  elsif Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.0.0')
    gem 'mime-types', '< 3.0'
  end
  if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('1.9.3')
    gem 'i18n', '< 0.7.0'
  end
end
