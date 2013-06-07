class RailsBackend::ViewsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app', __FILE__)

  def generate
    copy '_table.html.erb'
    copy '_show.html.erb'
    copy '_form.html.erb'
    copy '_search.html.erb'
  end

  private

  def copy file
    copy_file("views/backend/application/#{file}", "app/views/backend/#{plural_name}/#{file}")
  end

end
