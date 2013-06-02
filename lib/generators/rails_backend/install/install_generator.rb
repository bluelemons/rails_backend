class RailsBackend::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create
    copy_applications_file '_navigation.html.erb'
    copy_applications_file '_footer.html.erb'
    copy_layout 'application.html.erb'
    copy_assets
  end

  private
    def copy_applications_file file
      copy_file("views/backend/application/#{file}", "app/backend/application/#{file}")
    end

    def copy_layout file
      copy_file("views/layouts/backend/#{file}", "app/views/layouts/backend/#{file}")
    end

    def copy_assets
      copy_file("assets/javascripts/backend.js", "app/assets/javascripts/backend.js")
      copy_file("assets/stylesheets/backend.css", "app/assets/stylesheets/backend.css")
      copy_file("assets/stylesheets/bootstrap_and_overrides.css.less",
        "app/assets/stylesheets/bootstrap_and_overrides.css.less")
    end
end
