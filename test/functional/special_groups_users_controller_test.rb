require 'test_helper'

class SpecialGroupsUsersControllerTest < ActionController::TestCase
  setup do
    @special_groups_user = special_groups_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_groups_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_groups_user" do
    assert_difference('SpecialGroupsUser.count') do
      post :create, :special_groups_user => @special_groups_user.attributes
    end

    assert_redirected_to special_groups_user_path(assigns(:special_groups_user))
  end

  test "should show special_groups_user" do
    get :show, :id => @special_groups_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @special_groups_user.to_param
    assert_response :success
  end

  test "should update special_groups_user" do
    put :update, :id => @special_groups_user.to_param, :special_groups_user => @special_groups_user.attributes
    assert_redirected_to special_groups_user_path(assigns(:special_groups_user))
  end

  test "should destroy special_groups_user" do
    assert_difference('SpecialGroupsUser.count', -1) do
      delete :destroy, :id => @special_groups_user.to_param
    end

    assert_redirected_to special_groups_users_path
  end
end
