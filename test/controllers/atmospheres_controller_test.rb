require 'test_helper'

class AtmospheresControllerTest < ActionController::TestCase
  setup do
    @atmosphere = atmospheres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atmospheres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atmosphere" do
    assert_difference('Atmosphere.count') do
      post :create, atmosphere: { name: @atmosphere.name }
    end

    assert_redirected_to atmosphere_path(assigns(:atmosphere))
  end

  test "should show atmosphere" do
    get :show, id: @atmosphere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atmosphere
    assert_response :success
  end

  test "should update atmosphere" do
    patch :update, id: @atmosphere, atmosphere: { name: @atmosphere.name }
    assert_redirected_to atmosphere_path(assigns(:atmosphere))
  end

  test "should destroy atmosphere" do
    assert_difference('Atmosphere.count', -1) do
      delete :destroy, id: @atmosphere
    end

    assert_redirected_to atmospheres_path
  end
end
