require 'test_helper'

class SchoolsUsersControllerTest < ActionController::TestCase
  setup do
    @schools_user = schools_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schools_user" do
    assert_difference('SchoolsUser.count') do
      post :create, :schools_user => @schools_user.attributes
    end

    assert_redirected_to schools_user_path(assigns(:schools_user))
  end

  test "should show schools_user" do
    get :show, :id => @schools_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @schools_user.to_param
    assert_response :success
  end

  test "should update schools_user" do
    put :update, :id => @schools_user.to_param, :schools_user => @schools_user.attributes
    assert_redirected_to schools_user_path(assigns(:schools_user))
  end

  test "should destroy schools_user" do
    assert_difference('SchoolsUser.count', -1) do
      delete :destroy, :id => @schools_user.to_param
    end

    assert_redirected_to schools_users_path
  end
end
