require 'test_helper'

class Project2TargetsControllerTest < ActionController::TestCase
  setup do
    @project2_target = project2_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project2_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project2_target" do
    assert_difference('Project2Target.count') do
      post :create, :project2_target => @project2_target.attributes
    end

    assert_redirected_to project2_target_path(assigns(:project2_target))
  end

  test "should show project2_target" do
    get :show, :id => @project2_target.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project2_target.to_param
    assert_response :success
  end

  test "should update project2_target" do
    put :update, :id => @project2_target.to_param, :project2_target => @project2_target.attributes
    assert_redirected_to project2_target_path(assigns(:project2_target))
  end

  test "should destroy project2_target" do
    assert_difference('Project2Target.count', -1) do
      delete :destroy, :id => @project2_target.to_param
    end

    assert_redirected_to project2_targets_path
  end
end
