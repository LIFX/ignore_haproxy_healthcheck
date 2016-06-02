# ignore_haproxy_healthcheck

To prevent HAProxy healthchecks from skewing our NewRelic data, this checks the User Agent and then ignores the transaction

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ignore_haproxy_healthcheck', git: "https://github.com/lifx/ignore_haproxy_healthcheck"
```

## Usage

It automatically inserts the middleware at the top of the stack.

