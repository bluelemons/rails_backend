class RailsBackend::ViewsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate
    copy_file '_table.html.erb'
    copy_file '_show.html.erb'
    copy_file '_form.html.erb'
    copy_file '_search.html.erb'
  end

  private

  def copy file
    copy_file("views/backend/application/#{file}", "app/views/backend/#{plural_name}/#{file}")
  end

end
