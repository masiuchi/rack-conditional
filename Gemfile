source 'https://rubygems.org'

# Specify your gem's dependencies in rack-conditional.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.2.2')
  gem 'rack', '>= 1.6.4', '< 2.0.0'
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('1.9')
  nokogiri_version = '<= 1.6.1'
elsif Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.1')
  nokogiri_version = '~> 1.6.8'
end
gem 'nokogiri', nokogiri_version if nokogiri_version

group :development do
  if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('1.9.2')
    mime_types_version = '< 2.0'
  elsif Gem::Version.create(RUBY_VERSION) < Gem::Version.create('2.0.0')
    mime_types_version = '< 3.0'
  end
  gem 'mime-types', mime_types_version if mime_types_version
  if Gem::Version.create(RUBY_VERSION) < Gem::Version.create('1.9.3')
    gem 'i18n', '< 0.7.0'
  end
end
