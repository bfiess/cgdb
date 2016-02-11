require 'test_helper'

class OpacitiesControllerTest < ActionController::TestCase
  setup do
    @opacity = opacities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opacities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opacity" do
    assert_difference('Opacity.count') do
      post :create, opacity: { name: @opacity.name }
    end

    assert_redirected_to opacity_path(assigns(:opacity))
  end

  test "should show opacity" do
    get :show, id: @opacity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opacity
    assert_response :success
  end

  test "should update opacity" do
    patch :update, id: @opacity, opacity: { name: @opacity.name }
    assert_redirected_to opacity_path(assigns(:opacity))
  end

  test "should destroy opacity" do
    assert_difference('Opacity.count', -1) do
      delete :destroy, id: @opacity
    end

    assert_redirected_to opacities_path
  end
end
