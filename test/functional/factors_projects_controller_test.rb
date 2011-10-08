require 'test_helper'

class FactorsProjectsControllerTest < ActionController::TestCase
  setup do
    @factors_project = factors_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factors_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factors_project" do
    assert_difference('FactorsProject.count') do
      post :create, :factors_project => @factors_project.attributes
    end

    assert_redirected_to factors_project_path(assigns(:factors_project))
  end

  test "should show factors_project" do
    get :show, :id => @factors_project.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @factors_project.to_param
    assert_response :success
  end

  test "should update factors_project" do
    put :update, :id => @factors_project.to_param, :factors_project => @factors_project.attributes
    assert_redirected_to factors_project_path(assigns(:factors_project))
  end

  test "should destroy factors_project" do
    assert_difference('FactorsProject.count', -1) do
      delete :destroy, :id => @factors_project.to_param
    end

    assert_redirected_to factors_projects_path
  end
end
