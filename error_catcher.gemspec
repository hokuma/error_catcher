$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "error_catcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "error_catcher"
  s.version     = ErrorCatcher::VERSION
  s.authors     = ["hokuma"]
  s.email       = [""]
  s.homepage    = "https://github.com/hokuma/error_catcher"
  s.summary     = "Catche and save."
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.15"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
