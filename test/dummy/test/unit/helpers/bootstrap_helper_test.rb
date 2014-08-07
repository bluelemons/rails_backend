require 'test_helper'

class BootstrapHelperTest < ActionView::TestCase

  class Request
    def path
      "backend/blogs/1"
    end
  end

  test 'should create a breadcrumb' do
    path = Request.new
    response = breadcrumb(path)
    assert_equal response, "<li><a href=\"/backend\">Backend</a></li><li><a href=\"/backend/blogs\">Blogs</a></li><li class=\"active\">1</li>"
  end

end
