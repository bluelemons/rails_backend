$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_backend"
  s.version     = RailsBackend::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsBackend."
  s.description = "TODO: Description of RailsBackend."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"
  s.add_dependency 'inherited_resources'
  s.add_dependency 'will_paginate', '~> 3.0'
  s.add_dependency 'ransack'
  s.add_dependency 'twitter-bootstrap-rails'
  s.add_dependency 'simple_form'
  s.add_dependency 'less-rails'
end
