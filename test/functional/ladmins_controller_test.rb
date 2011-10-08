require 'test_helper'

class LadminsControllerTest < ActionController::TestCase
  setup do
    @ladmin = ladmins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ladmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ladmin" do
    assert_difference('Ladmin.count') do
      post :create, :ladmin => @ladmin.attributes
    end

    assert_redirected_to ladmin_path(assigns(:ladmin))
  end

  test "should show ladmin" do
    get :show, :id => @ladmin.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ladmin.to_param
    assert_response :success
  end

  test "should update ladmin" do
    put :update, :id => @ladmin.to_param, :ladmin => @ladmin.attributes
    assert_redirected_to ladmin_path(assigns(:ladmin))
  end

  test "should destroy ladmin" do
    assert_difference('Ladmin.count', -1) do
      delete :destroy, :id => @ladmin.to_param
    end

    assert_redirected_to ladmins_path
  end
end
