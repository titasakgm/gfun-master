require 'test_helper'

class TumbonsControllerTest < ActionController::TestCase
  setup do
    @tumbon = tumbons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tumbons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tumbon" do
    assert_difference('Tumbon.count') do
      post :create, :tumbon => @tumbon.attributes
    end

    assert_redirected_to tumbon_path(assigns(:tumbon))
  end

  test "should show tumbon" do
    get :show, :id => @tumbon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tumbon.to_param
    assert_response :success
  end

  test "should update tumbon" do
    put :update, :id => @tumbon.to_param, :tumbon => @tumbon.attributes
    assert_redirected_to tumbon_path(assigns(:tumbon))
  end

  test "should destroy tumbon" do
    assert_difference('Tumbon.count', -1) do
      delete :destroy, :id => @tumbon.to_param
    end

    assert_redirected_to tumbons_path
  end
end
