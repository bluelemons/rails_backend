require "rails_backend/engine"
require "rails_backend/helpers/bootstrap_helper"

module RailsBackend
  ActionController::Base.helper BootstrapHelper
end
