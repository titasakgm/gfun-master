require 'test_helper'

class Lb202555sControllerTest < ActionController::TestCase
  setup do
    @lb202555 = lb202555s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lb202555s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lb202555" do
    assert_difference('Lb202555.count') do
      post :create, :lb202555 => @lb202555.attributes
    end

    assert_redirected_to lb202555_path(assigns(:lb202555))
  end

  test "should show lb202555" do
    get :show, :id => @lb202555.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lb202555.to_param
    assert_response :success
  end

  test "should update lb202555" do
    put :update, :id => @lb202555.to_param, :lb202555 => @lb202555.attributes
    assert_redirected_to lb202555_path(assigns(:lb202555))
  end

  test "should destroy lb202555" do
    assert_difference('Lb202555.count', -1) do
      delete :destroy, :id => @lb202555.to_param
    end

    assert_redirected_to lb202555s_path
  end
end
