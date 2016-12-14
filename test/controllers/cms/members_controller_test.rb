require 'test_helper'

class Cms::MembersControllerTest < ActionController::TestCase
  setup do
    @cms_member = cms_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_member" do
    assert_difference('Cms::Member.count') do
      post :create, cms_member: {  }
    end

    assert_redirected_to cms_member_path(assigns(:cms_member))
  end

  test "should show cms_member" do
    get :show, id: @cms_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_member
    assert_response :success
  end

  test "should update cms_member" do
    patch :update, id: @cms_member, cms_member: {  }
    assert_redirected_to cms_member_path(assigns(:cms_member))
  end

  test "should destroy cms_member" do
    assert_difference('Cms::Member.count', -1) do
      delete :destroy, id: @cms_member
    end

    assert_redirected_to cms_members_path
  end
end
