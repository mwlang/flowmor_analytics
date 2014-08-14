$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flowmor_analytics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flowmor_analytics"
  s.version     = FlowmorAnalytics::VERSION
  s.authors     = ["Michael Lang"]
  s.email       = ["mwlang@cybrains.net"]
  s.homepage    = "https://github.com/mwlang/flowmor_analytics"
  s.summary     = "FlowmorAnalytics injects google, clicky, etc. analytic scripts into your application"
  s.description = "FlowmorAnalytics makes it easy to include google, clicky, etc. analytic scripts into your application and they will only render in production (unless you override)"
  s.license     = "MIT"

  s.files = Dir["{app,config,bin,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1"

  s.add_development_dependency "sqlite3", '~> 1.3'
end
