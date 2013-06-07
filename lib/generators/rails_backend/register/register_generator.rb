class RailsBackend::RegisterGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app', __FILE__)

  def generate
    template "controller.rb", "app/controllers/backend/#{plural_name}_controller.rb"
    route "namespace :backend do resources :#{plural_name} end"
  end
end
