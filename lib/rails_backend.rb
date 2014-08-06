require "rails_backend/engine"
require "rails_backend/helpers/bootstrap_helper"
require "responders"
require 'rails_backend/engine'
require 'will_paginate'
require 'inherited_resources'
require 'ransack'
require 'simple_form'
require 'less-rails'
require 'jquery-rails'
require 'less-rails-bootstrap'


module RailsBackend
  ActionController::Base.helper BootstrapHelper
end
