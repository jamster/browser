require "rails/railtie"
require "browser/action_controller"
require "browser/middleware/context/additions"

class BVBrowser
  class Railtie < Rails::Railtie
    config.browser = ActiveSupport::OrderedOptions.new

    initializer "browser" do
      ::ActionController::Base.send :include, BVBrowser::ActionController
      BVBrowser::Middleware::Context.send :include, BVBrowser::Middleware::Context::Additions
    end
  end
end
