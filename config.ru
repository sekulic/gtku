# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
  config.middleware.insert_before Rack::Lock, Rack::CanonicalHost, {
    :host   => 'www.theculturalspotter.eu',
    :scheme => 'http',
  }
run Rails.application
