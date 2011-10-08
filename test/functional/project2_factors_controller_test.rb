require 'test_helper'

class Project2FactorsControllerTest < ActionController::TestCase
  setup do
    @project2_factor = project2_factors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project2_factors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project2_factor" do
    assert_difference('Project2Factor.count') do
      post :create, :project2_factor => @project2_factor.attributes
    end

    assert_redirected_to project2_factor_path(assigns(:project2_factor))
  end

  test "should show project2_factor" do
    get :show, :id => @project2_factor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project2_factor.to_param
    assert_response :success
  end

  test "should update project2_factor" do
    put :update, :id => @project2_factor.to_param, :project2_factor => @project2_factor.attributes
    assert_redirected_to project2_factor_path(assigns(:project2_factor))
  end

  test "should destroy project2_factor" do
    assert_difference('Project2Factor.count', -1) do
      delete :destroy, :id => @project2_factor.to_param
    end

    assert_redirected_to project2_factors_path
  end
end
