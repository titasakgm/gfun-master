require 'test_helper'

class ProjectsStaffsControllerTest < ActionController::TestCase
  setup do
    @projects_staff = projects_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projects_staff" do
    assert_difference('ProjectsStaff.count') do
      post :create, :projects_staff => @projects_staff.attributes
    end

    assert_redirected_to projects_staff_path(assigns(:projects_staff))
  end

  test "should show projects_staff" do
    get :show, :id => @projects_staff.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @projects_staff.to_param
    assert_response :success
  end

  test "should update projects_staff" do
    put :update, :id => @projects_staff.to_param, :projects_staff => @projects_staff.attributes
    assert_redirected_to projects_staff_path(assigns(:projects_staff))
  end

  test "should destroy projects_staff" do
    assert_difference('ProjectsStaff.count', -1) do
      delete :destroy, :id => @projects_staff.to_param
    end

    assert_redirected_to projects_staffs_path
  end
end
