module ErrorCatcher
  class Engine < ::Rails::Engine
    isolate_namespace ErrorCatcher

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
