require 'test_helper'

class Project2SpecialGroupsControllerTest < ActionController::TestCase
  setup do
    @project2_special_group = project2_special_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project2_special_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project2_special_group" do
    assert_difference('Project2SpecialGroup.count') do
      post :create, :project2_special_group => @project2_special_group.attributes
    end

    assert_redirected_to project2_special_group_path(assigns(:project2_special_group))
  end

  test "should show project2_special_group" do
    get :show, :id => @project2_special_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project2_special_group.to_param
    assert_response :success
  end

  test "should update project2_special_group" do
    put :update, :id => @project2_special_group.to_param, :project2_special_group => @project2_special_group.attributes
    assert_redirected_to project2_special_group_path(assigns(:project2_special_group))
  end

  test "should destroy project2_special_group" do
    assert_difference('Project2SpecialGroup.count', -1) do
      delete :destroy, :id => @project2_special_group.to_param
    end

    assert_redirected_to project2_special_groups_path
  end
end
