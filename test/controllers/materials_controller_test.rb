require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, material: { al2o3: @material.al2o3, b2o3: @material.b2o3, bao: @material.bao, cao: @material.cao, colorant: @material.colorant, coo: @material.coo, cr2o3: @material.cr2o3, cuo: @material.cuo, eweight: @material.eweight, fe2o3: @material.fe2o3, feo: @material.feo, k2o: @material.k2o, li2o: @material.li2o, mgo: @material.mgo, mno2: @material.mno2, na2o: @material.na2o, name: @material.name, nio: @material.nio, p2o5: @material.p2o5, pbo: @material.pbo, ppg: @material.ppg, sb2o3: @material.sb2o3, sio2: @material.sio2, sno2: @material.sno2, sro: @material.sro, tio2: @material.tio2, v2o5: @material.v2o5, zno: @material.zno, zro2: @material.zro2 }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, id: @material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material
    assert_response :success
  end

  test "should update material" do
    patch :update, id: @material, material: { al2o3: @material.al2o3, b2o3: @material.b2o3, bao: @material.bao, cao: @material.cao, colorant: @material.colorant, coo: @material.coo, cr2o3: @material.cr2o3, cuo: @material.cuo, eweight: @material.eweight, fe2o3: @material.fe2o3, feo: @material.feo, k2o: @material.k2o, li2o: @material.li2o, mgo: @material.mgo, mno2: @material.mno2, na2o: @material.na2o, name: @material.name, nio: @material.nio, p2o5: @material.p2o5, pbo: @material.pbo, ppg: @material.ppg, sb2o3: @material.sb2o3, sio2: @material.sio2, sno2: @material.sno2, sro: @material.sro, tio2: @material.tio2, v2o5: @material.v2o5, zno: @material.zno, zro2: @material.zro2 }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material
    end

    assert_redirected_to materials_path
  end
end
