require 'test_helper'

class CommunitiesUsersControllerTest < ActionController::TestCase
  setup do
    @communities_user = communities_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communities_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create communities_user" do
    assert_difference('CommunitiesUser.count') do
      post :create, :communities_user => @communities_user.attributes
    end

    assert_redirected_to communities_user_path(assigns(:communities_user))
  end

  test "should show communities_user" do
    get :show, :id => @communities_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @communities_user.to_param
    assert_response :success
  end

  test "should update communities_user" do
    put :update, :id => @communities_user.to_param, :communities_user => @communities_user.attributes
    assert_redirected_to communities_user_path(assigns(:communities_user))
  end

  test "should destroy communities_user" do
    assert_difference('CommunitiesUser.count', -1) do
      delete :destroy, :id => @communities_user.to_param
    end

    assert_redirected_to communities_users_path
  end
end
