require 'test_helper'

class Backend::BlogsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should get a collection variable' do
    get :index
    assert_not_nil assigns(:blogs)
  end

  test 'should a paginate collection' do
    data = (1..5).map { Blog.new }
    get :index, page: 2
    assert_equal [], assigns(:blogs)
  end

  test 'should search by attribute' do
    blog = Blog.create title: "super new post"
    get :index, :q => {:title_content => "super"}
    assert_equal blog, assigns(:blogs).first
  end
end
