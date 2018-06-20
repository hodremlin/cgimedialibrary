require 'test_helper'

class VerticalCategoriesControllerTest < ActionController::TestCase
  setup do
    @vertical_category = vertical_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vertical_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vertical_category" do
    assert_difference('VerticalCategory.count') do
      post :create, vertical_category: {  }
    end

    assert_redirected_to vertical_category_path(assigns(:vertical_category))
  end

  test "should show vertical_category" do
    get :show, id: @vertical_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vertical_category
    assert_response :success
  end

  test "should update vertical_category" do
    patch :update, id: @vertical_category, vertical_category: {  }
    assert_redirected_to vertical_category_path(assigns(:vertical_category))
  end

  test "should destroy vertical_category" do
    assert_difference('VerticalCategory.count', -1) do
      delete :destroy, id: @vertical_category
    end

    assert_redirected_to vertical_categories_path
  end
end
