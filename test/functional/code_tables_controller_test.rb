require 'test_helper'

class CodeTablesControllerTest < ActionController::TestCase
  setup do
    @code_table = code_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_table" do
    assert_difference('CodeTable.count') do
      post :create, :code_table => @code_table.attributes
    end

    assert_redirected_to code_table_path(assigns(:code_table))
  end

  test "should show code_table" do
    get :show, :id => @code_table.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @code_table.to_param
    assert_response :success
  end

  test "should update code_table" do
    put :update, :id => @code_table.to_param, :code_table => @code_table.attributes
    assert_redirected_to code_table_path(assigns(:code_table))
  end

  test "should destroy code_table" do
    assert_difference('CodeTable.count', -1) do
      delete :destroy, :id => @code_table.to_param
    end

    assert_redirected_to code_tables_path
  end
end
