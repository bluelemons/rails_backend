module BootstrapHelper

  def breadcrumb request
    paths = request.path.split("/")
    response = ""
    paths.each do |path|
      if paths.last == path
        response += "<li class='active'>#{path}</li>"
      else
        response += "<li><a href='/#{ path }'>#{ path }</a></li>"
      end
    end
  end

  def bootstrap_flash
  end
end
