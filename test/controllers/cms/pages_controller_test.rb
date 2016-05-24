require 'test_helper'

class Cms::PagesControllerTest < ActionController::TestCase
  setup do
    @cms_page = cms_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_page" do
    assert_difference('Cms::Page.count') do
      post :create, cms_page: { content: @cms_page.content, title: @cms_page.title }
    end

    assert_redirected_to cms_page_path(assigns(:cms_page))
  end

  test "should show cms_page" do
    get :show, id: @cms_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_page
    assert_response :success
  end

  test "should update cms_page" do
    patch :update, id: @cms_page, cms_page: { content: @cms_page.content, title: @cms_page.title }
    assert_redirected_to cms_page_path(assigns(:cms_page))
  end

  test "should destroy cms_page" do
    assert_difference('Cms::Page.count', -1) do
      delete :destroy, id: @cms_page
    end

    assert_redirected_to cms_pages_path
  end
end
