Rails.application.routes.draw do

  mount RailsBackend::Engine => "/rails_backend"

  namespace :backend do
    resources :blogs
  end
end
