require 'test_helper'

class BootstrapHelperTest < ActionView::TestCase

  test 'should create a breadcrumb' do
    class Request
      def path
        "backend/blogs/1"
      end
    end
    
    request = Request.new
    assert_equal breadcrumb(request), "<li><a href='/backend'>Backend</a></li><li><a href='/backend/blogs'>Blogs</a></li><li class='active'>1</li>"
  end

end
