require 'test_helper'

class Backend::BlogsControllerTest < ActionController::TestCase

  def setup
    @blog = Blog.create title: "super new post"
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should display message for empty collection' do
    Blog.delete_all
    get :index
    assert_select '.empty-message', 'There are no elements to display.'
    assert_select 'table.index-table', false, 'there is no table'
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
    get :index, :q => {:title_content => "super"}
    assert_equal @blog, assigns(:blogs).first
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @blog.id
    assert_response :success
  end

  test 'should get show' do
    get :show, id: @blog.id
    assert_response :success
  end

end
