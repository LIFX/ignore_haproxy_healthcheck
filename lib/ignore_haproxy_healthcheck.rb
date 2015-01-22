module IgnoreHAProxyHealthcheck
  class Railtie < Rails::Railtie
    initializer 'ignore_haproxy_healthcheck.config' do |app|
      app.config.middleware.insert_before 0, Middleware::IgnoreHAProxyRequests
    end
  end
end
