require 'test_helper'

class ProblemsUsersControllerTest < ActionController::TestCase
  setup do
    @problems_user = problems_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problems_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problems_user" do
    assert_difference('ProblemsUser.count') do
      post :create, :problems_user => @problems_user.attributes
    end

    assert_redirected_to problems_user_path(assigns(:problems_user))
  end

  test "should show problems_user" do
    get :show, :id => @problems_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @problems_user.to_param
    assert_response :success
  end

  test "should update problems_user" do
    put :update, :id => @problems_user.to_param, :problems_user => @problems_user.attributes
    assert_redirected_to problems_user_path(assigns(:problems_user))
  end

  test "should destroy problems_user" do
    assert_difference('ProblemsUser.count', -1) do
      delete :destroy, :id => @problems_user.to_param
    end

    assert_redirected_to problems_users_path
  end
end
