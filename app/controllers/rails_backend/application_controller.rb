module RailsBackend
  class ApplicationController < InheritedResources::Base

    protected
      def collection
        @q = end_of_association_chain.search(params[:q])
        get_collection_ivar || set_collection_ivar(@q.result(distinct: true).paginate(:page => params[:page]))
      end
  end
end
