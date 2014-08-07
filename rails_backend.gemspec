lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "rails_backend/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_backend"
  s.version     = RailsBackend::VERSION
  s.licenses    = ["AGPL"]
  s.authors     = ["olvap", "eloysp"]
  s.email       = ["oldani.pablo@gmail.com"]
  s.homepage    = "https://github.com/bluelemons/rails_backend"
  s.summary     = "A backend application for rails."
  s.description = "A customizable backend admin system for Ruby on Rails."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["COPYING", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency 'inherited_resources', '>= 1.4'
  s.add_dependency 'will_paginate', '~> 3.0'
  s.add_dependency 'ransack'
  s.add_dependency 'less-rails-bootstrap', '~> 3.0.3'
  s.add_dependency 'simple_form', '~> 3.0'
  s.add_dependency 'therubyracer'
  s.add_dependency 'less-rails', '~> 2.4'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'responders'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry'
end
