require 'ignore_haproxy_healthcheck/middleware'
module IgnoreHAProxyHealthcheck
  class Railtie < Rails::Railtie
    initializer 'ignore_haproxy_healthcheck.config' do |app|
      app.config.middleware.insert_before 0, IgnoreHAProxyHealthcheck::Middleware
    end
  end
end
