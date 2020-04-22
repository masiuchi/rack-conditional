# Rack::Conditional
Conditional wrapper for Rack middleware. This is a port of [Plack::Middleware::Conditional](https://metacpan.org/pod/Plack::Middleware::Conditional).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-conditional'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-conditional

## Usage


```ruby
# config.ru
require 'rack_conditional'
use_if proc { |env| env['REMOTE_ADDR'] == '127.0.0.1' }, ShowExceptions
```

Or

```ruby
# config.ru
require 'rack_conditional'
use Rack::Conditional, proc { |env| env['REMOTE_ADDR'] == '127.0.0.1' }, ShowExceptions
```

Or

```ruby
# Sinatra
require 'rack_conditional'
class YourApp < Sinatra::Base
  use_if proc { |env| env['REMOTE_ADDR'] == '127.0.0.1' }, ShowExceptions
end
```

Or

```ruby
# Rails
# config/application.rb
require 'rack_conditional'
module YourApp
  class Application < Rails::Application
    config.middleware.use_if proc { |env| env['REMOTE_ADDR'] == '127.0.0.1' }, ShowExceptions
  end
end
```

# License

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/masiuchi/rack-conditional.

