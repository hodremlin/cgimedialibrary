require 'test_helper'

class ReviewtubesControllerTest < ActionController::TestCase
  setup do
    @reviewtube = reviewtubes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviewtubes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reviewtube" do
    assert_difference('Reviewtube.count') do
      post :create, reviewtube: {  }
    end

    assert_redirected_to reviewtube_path(assigns(:reviewtube))
  end

  test "should show reviewtube" do
    get :show, id: @reviewtube
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reviewtube
    assert_response :success
  end

  test "should update reviewtube" do
    patch :update, id: @reviewtube, reviewtube: {  }
    assert_redirected_to reviewtube_path(assigns(:reviewtube))
  end

  test "should destroy reviewtube" do
    assert_difference('Reviewtube.count', -1) do
      delete :destroy, id: @reviewtube
    end

    assert_redirected_to reviewtubes_path
  end
end
