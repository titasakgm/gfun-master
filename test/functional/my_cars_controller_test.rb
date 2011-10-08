require 'test_helper'

class MyCarsControllerTest < ActionController::TestCase
  setup do
    @my_car = my_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_car" do
    assert_difference('MyCar.count') do
      post :create, :my_car => @my_car.attributes
    end

    assert_redirected_to my_car_path(assigns(:my_car))
  end

  test "should show my_car" do
    get :show, :id => @my_car.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @my_car.to_param
    assert_response :success
  end

  test "should update my_car" do
    put :update, :id => @my_car.to_param, :my_car => @my_car.attributes
    assert_redirected_to my_car_path(assigns(:my_car))
  end

  test "should destroy my_car" do
    assert_difference('MyCar.count', -1) do
      delete :destroy, :id => @my_car.to_param
    end

    assert_redirected_to my_cars_path
  end
end
