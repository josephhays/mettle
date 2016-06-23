require 'test_helper'

class Cms::ShowsControllerTest < ActionController::TestCase
  setup do
    @cms_show = cms_shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_show" do
    assert_difference('Cms::Show.count') do
      post :create, cms_show: {  }
    end

    assert_redirected_to cms_show_path(assigns(:cms_show))
  end

  test "should show cms_show" do
    get :show, id: @cms_show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_show
    assert_response :success
  end

  test "should update cms_show" do
    patch :update, id: @cms_show, cms_show: {  }
    assert_redirected_to cms_show_path(assigns(:cms_show))
  end

  test "should destroy cms_show" do
    assert_difference('Cms::Show.count', -1) do
      delete :destroy, id: @cms_show
    end

    assert_redirected_to cms_shows_path
  end
end
