require 'test_helper'

class SampleProductsControllerTest < ActionController::TestCase
  setup do
    @sample_product = sample_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_product" do
    assert_difference('SampleProduct.count') do
      post :create, :sample_product => @sample_product.attributes
    end

    assert_redirected_to sample_product_path(assigns(:sample_product))
  end

  test "should show sample_product" do
    get :show, :id => @sample_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sample_product.to_param
    assert_response :success
  end

  test "should update sample_product" do
    put :update, :id => @sample_product.to_param, :sample_product => @sample_product.attributes
    assert_redirected_to sample_product_path(assigns(:sample_product))
  end

  test "should destroy sample_product" do
    assert_difference('SampleProduct.count', -1) do
      delete :destroy, :id => @sample_product.to_param
    end

    assert_redirected_to sample_products_path
  end
end
