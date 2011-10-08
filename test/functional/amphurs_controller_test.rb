require 'test_helper'

class AmphursControllerTest < ActionController::TestCase
  setup do
    @amphur = amphurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amphurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amphur" do
    assert_difference('Amphur.count') do
      post :create, :amphur => @amphur.attributes
    end

    assert_redirected_to amphur_path(assigns(:amphur))
  end

  test "should show amphur" do
    get :show, :id => @amphur.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @amphur.to_param
    assert_response :success
  end

  test "should update amphur" do
    put :update, :id => @amphur.to_param, :amphur => @amphur.attributes
    assert_redirected_to amphur_path(assigns(:amphur))
  end

  test "should destroy amphur" do
    assert_difference('Amphur.count', -1) do
      delete :destroy, :id => @amphur.to_param
    end

    assert_redirected_to amphurs_path
  end
end
