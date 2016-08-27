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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/masiuchi/rack-conditional.

