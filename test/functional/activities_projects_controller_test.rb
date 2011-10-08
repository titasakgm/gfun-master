require 'test_helper'

class ActivitiesProjectsControllerTest < ActionController::TestCase
  setup do
    @activities_project = activities_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activities_project" do
    assert_difference('ActivitiesProject.count') do
      post :create, :activities_project => @activities_project.attributes
    end

    assert_redirected_to activities_project_path(assigns(:activities_project))
  end

  test "should show activities_project" do
    get :show, :id => @activities_project.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @activities_project.to_param
    assert_response :success
  end

  test "should update activities_project" do
    put :update, :id => @activities_project.to_param, :activities_project => @activities_project.attributes
    assert_redirected_to activities_project_path(assigns(:activities_project))
  end

  test "should destroy activities_project" do
    assert_difference('ActivitiesProject.count', -1) do
      delete :destroy, :id => @activities_project.to_param
    end

    assert_redirected_to activities_projects_path
  end
end
