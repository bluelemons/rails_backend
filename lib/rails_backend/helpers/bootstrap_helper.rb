module BootstrapHelper

  class Breadcrumb

    include ActionView::Helpers::TagHelper

    def initialize request
      @request = request
      @response = ""
    end

    def print
      build
      @response
    end

    private

    def build
      paths.each_with_index do |path, i|
        @response += if paths.last == path
          build_last path
        else
          build_row path, i
        end
      end
    end

    def build_last path
      content_tag(:li, path, class: 'active')
    end

    def build_row path, i
      content_tag(:li, content_tag(:a, path.capitalize, href: paths[0..i].join('/')))
    end

    def paths
      @request.path.split("/")
    end

  end

  def breadcrumb request
    raw Breadcrumb.new(request).print
  end

end
