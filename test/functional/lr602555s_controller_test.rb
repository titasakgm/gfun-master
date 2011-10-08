require 'test_helper'

class Lr602555sControllerTest < ActionController::TestCase
  setup do
    @lr602555 = lr602555s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lr602555s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lr602555" do
    assert_difference('Lr602555.count') do
      post :create, :lr602555 => @lr602555.attributes
    end

    assert_redirected_to lr602555_path(assigns(:lr602555))
  end

  test "should show lr602555" do
    get :show, :id => @lr602555.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lr602555.to_param
    assert_response :success
  end

  test "should update lr602555" do
    put :update, :id => @lr602555.to_param, :lr602555 => @lr602555.attributes
    assert_redirected_to lr602555_path(assigns(:lr602555))
  end

  test "should destroy lr602555" do
    assert_difference('Lr602555.count', -1) do
      delete :destroy, :id => @lr602555.to_param
    end

    assert_redirected_to lr602555s_path
  end
end
