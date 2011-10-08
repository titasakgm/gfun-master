require 'test_helper'

class UserThreatsControllerTest < ActionController::TestCase
  setup do
    @user_threat = user_threats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_threats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_threat" do
    assert_difference('UserThreat.count') do
      post :create, :user_threat => @user_threat.attributes
    end

    assert_redirected_to user_threat_path(assigns(:user_threat))
  end

  test "should show user_threat" do
    get :show, :id => @user_threat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_threat.to_param
    assert_response :success
  end

  test "should update user_threat" do
    put :update, :id => @user_threat.to_param, :user_threat => @user_threat.attributes
    assert_redirected_to user_threat_path(assigns(:user_threat))
  end

  test "should destroy user_threat" do
    assert_difference('UserThreat.count', -1) do
      delete :destroy, :id => @user_threat.to_param
    end

    assert_redirected_to user_threats_path
  end
end
