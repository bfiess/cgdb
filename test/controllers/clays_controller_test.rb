require 'test_helper'

class ClaysControllerTest < ActionController::TestCase
  setup do
    @clay = clays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clay" do
    assert_difference('Clay.count') do
      post :create, clay: { al2o3: @clay.al2o3, atmosphere_id: @clay.atmosphere_id, b2o3: @clay.b2o3, bao: @clay.bao, bisque: @clay.bisque, cao: @clay.cao, casting: @clay.casting, cone: @clay.cone, coo: @clay.coo, cr2o3: @clay.cr2o3, cuo: @clay.cuo, datetested: @clay.datetested, description: @clay.description, dryshrink: @clay.dryshrink, fe2o3: @clay.fe2o3, feo: @clay.feo, glazeshrink: @clay.glazeshrink, k2o: @clay.k2o, li2o: @clay.li2o, mgo: @clay.mgo, mno2: @clay.mno2, na2o: @clay.na2o, name: @clay.name, nio: @clay.nio, p2o5: @clay.p2o5, pbo: @clay.pbo, sb2o3: @clay.sb2o3, sio2: @clay.sio2, sno2: @clay.sno2, specificgravity: @clay.specificgravity, sro: @clay.sro, tio2: @clay.tio2, v2o5: @clay.v2o5, woa: @clay.woa, zno: @clay.zno, zro2: @clay.zro2 }
    end

    assert_redirected_to clay_path(assigns(:clay))
  end

  test "should show clay" do
    get :show, id: @clay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clay
    assert_response :success
  end

  test "should update clay" do
    patch :update, id: @clay, clay: { al2o3: @clay.al2o3, atmosphere_id: @clay.atmosphere_id, b2o3: @clay.b2o3, bao: @clay.bao, bisque: @clay.bisque, cao: @clay.cao, casting: @clay.casting, cone: @clay.cone, coo: @clay.coo, cr2o3: @clay.cr2o3, cuo: @clay.cuo, datetested: @clay.datetested, description: @clay.description, dryshrink: @clay.dryshrink, fe2o3: @clay.fe2o3, feo: @clay.feo, glazeshrink: @clay.glazeshrink, k2o: @clay.k2o, li2o: @clay.li2o, mgo: @clay.mgo, mno2: @clay.mno2, na2o: @clay.na2o, name: @clay.name, nio: @clay.nio, p2o5: @clay.p2o5, pbo: @clay.pbo, sb2o3: @clay.sb2o3, sio2: @clay.sio2, sno2: @clay.sno2, specificgravity: @clay.specificgravity, sro: @clay.sro, tio2: @clay.tio2, v2o5: @clay.v2o5, woa: @clay.woa, zno: @clay.zno, zro2: @clay.zro2 }
    assert_redirected_to clay_path(assigns(:clay))
  end

  test "should destroy clay" do
    assert_difference('Clay.count', -1) do
      delete :destroy, id: @clay
    end

    assert_redirected_to clays_path
  end
end
