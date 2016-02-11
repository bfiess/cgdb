require 'test_helper'

class SurfacesControllerTest < ActionController::TestCase
  setup do
    @surface = surfaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surfaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surface" do
    assert_difference('Surface.count') do
      post :create, surface: { name: @surface.name }
    end

    assert_redirected_to surface_path(assigns(:surface))
  end

  test "should show surface" do
    get :show, id: @surface
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surface
    assert_response :success
  end

  test "should update surface" do
    patch :update, id: @surface, surface: { name: @surface.name }
    assert_redirected_to surface_path(assigns(:surface))
  end

  test "should destroy surface" do
    assert_difference('Surface.count', -1) do
      delete :destroy, id: @surface
    end

    assert_redirected_to surfaces_path
  end
end
