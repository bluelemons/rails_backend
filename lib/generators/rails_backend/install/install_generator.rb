class RailsBackend::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../../app', __FILE__)

  def create
    copy_applications_file '_navigation.html.erb'
    copy_applications_file '_footer.html.erb'
    copy_layout 'application.html.erb'
    copy_responder_file 'responders.en.yml'
    copy_app_responder_file 'application_responder.rb'
    copy_assets
  end

  private
    def copy_applications_file file
      copy_file("views/backend/application/#{ file }",
        "app/views/backend/application/#{ file }")
    end

    def copy_layout file
      copy_file("views/layouts/backend/#{ file }",
        "app/views/layouts/backend/#{ file }")
    end

    def copy_responder_file file
      copy_file("config/locales/#{ file }",
        "app/config/locales/#{ file }")
    end

    def copy_app_responder_file file
      copy_file("lib/#{ file }",
        "lib/locales/#{ file }")
    end

    def copy_assets
      copy_file("assets/javascripts/backend/backend.js",
        "app/assets/javascripts/backend.js")
      copy_file("assets/stylesheets/backend/backend.css",
        "app/assets/stylesheets/backend.css")
    end
end
