module Backend
  class ApplicationController < InheritedResources::Base

    helper_method :attributes

    before_filter :add_breadcrumbs

    def attributes
      resource_class.attribute_names - %w(id created_at updated_at)
    end

    protected
      def collection
        @q = end_of_association_chain.search(params[:q])
        get_collection_ivar || set_collection_ivar(@q.result(distinct: true).paginate(:page => params[:page]))
      end

      def paths
        request.path.split("/")[1..-1]
      end

      def add_breadcrumbs
        url = ""
        paths.each do |path|
          url = url + "/" + path
          add_breadcrumb path, url
        end
      end
  end
end
