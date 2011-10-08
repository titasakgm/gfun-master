require 'test_helper'

class PlacesUsersControllerTest < ActionController::TestCase
  setup do
    @places_user = places_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_user" do
    assert_difference('PlacesUser.count') do
      post :create, :places_user => @places_user.attributes
    end

    assert_redirected_to places_user_path(assigns(:places_user))
  end

  test "should show places_user" do
    get :show, :id => @places_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @places_user.to_param
    assert_response :success
  end

  test "should update places_user" do
    put :update, :id => @places_user.to_param, :places_user => @places_user.attributes
    assert_redirected_to places_user_path(assigns(:places_user))
  end

  test "should destroy places_user" do
    assert_difference('PlacesUser.count', -1) do
      delete :destroy, :id => @places_user.to_param
    end

    assert_redirected_to places_users_path
  end
end
