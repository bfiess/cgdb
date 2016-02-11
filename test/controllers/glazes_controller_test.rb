require 'test_helper'

class GlazesControllerTest < ActionController::TestCase
  setup do
    @glaze = glazes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glazes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glaze" do
    assert_difference('Glaze.count') do
      post :create, glaze: { al2o3: @glaze.al2o3, atmosphere_id: @glaze.atmosphere_id, b2o3: @glaze.b2o3, bao: @glaze.bao, cao: @glaze.cao, cone: @glaze.cone, coo: @glaze.coo, cr2o3: @glaze.cr2o3, cuo: @glaze.cuo, datetested: @glaze.datetested, description: @glaze.description, fe2o3: @glaze.fe2o3, feo: @glaze.feo, k2o: @glaze.k2o, li2o: @glaze.li2o, mgo: @glaze.mgo, mno2: @glaze.mno2, na2o: @glaze.na2o, name: @glaze.name, nio: @glaze.nio, opacity_id: @glaze.opacity_id, p2o5: @glaze.p2o5, pbo: @glaze.pbo, sb2o3: @glaze.sb2o3, sio2: @glaze.sio2, sno2: @glaze.sno2, sro: @glaze.sro, surface_id: @glaze.surface_id, tio2: @glaze.tio2, v2o5: @glaze.v2o5, zno: @glaze.zno, zro2: @glaze.zro2 }
    end

    assert_redirected_to glaze_path(assigns(:glaze))
  end

  test "should show glaze" do
    get :show, id: @glaze
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glaze
    assert_response :success
  end

  test "should update glaze" do
    patch :update, id: @glaze, glaze: { al2o3: @glaze.al2o3, atmosphere_id: @glaze.atmosphere_id, b2o3: @glaze.b2o3, bao: @glaze.bao, cao: @glaze.cao, cone: @glaze.cone, coo: @glaze.coo, cr2o3: @glaze.cr2o3, cuo: @glaze.cuo, datetested: @glaze.datetested, description: @glaze.description, fe2o3: @glaze.fe2o3, feo: @glaze.feo, k2o: @glaze.k2o, li2o: @glaze.li2o, mgo: @glaze.mgo, mno2: @glaze.mno2, na2o: @glaze.na2o, name: @glaze.name, nio: @glaze.nio, opacity_id: @glaze.opacity_id, p2o5: @glaze.p2o5, pbo: @glaze.pbo, sb2o3: @glaze.sb2o3, sio2: @glaze.sio2, sno2: @glaze.sno2, sro: @glaze.sro, surface_id: @glaze.surface_id, tio2: @glaze.tio2, v2o5: @glaze.v2o5, zno: @glaze.zno, zro2: @glaze.zro2 }
    assert_redirected_to glaze_path(assigns(:glaze))
  end

  test "should destroy glaze" do
    assert_difference('Glaze.count', -1) do
      delete :destroy, id: @glaze
    end

    assert_redirected_to glazes_path
  end
end
