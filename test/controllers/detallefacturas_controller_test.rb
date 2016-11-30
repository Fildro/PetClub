require 'test_helper'

class DetallefacturasControllerTest < ActionController::TestCase
  setup do
    @detallefactura = detallefacturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detallefacturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detallefactura" do
    assert_difference('Detallefactura.count') do
      post :create, detallefactura: { cantidad: @detallefactura.cantidad, factura_id: @detallefactura.factura_id, mascot_id: @detallefactura.mascot_id, prevenp: @detallefactura.prevenp, producto_id: @detallefactura.producto_id, servicio_id: @detallefactura.servicio_id }
    end

    assert_redirected_to detallefactura_path(assigns(:detallefactura))
  end

  test "should show detallefactura" do
    get :show, id: @detallefactura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detallefactura
    assert_response :success
  end

  test "should update detallefactura" do
    patch :update, id: @detallefactura, detallefactura: { cantidad: @detallefactura.cantidad, factura_id: @detallefactura.factura_id, mascot_id: @detallefactura.mascot_id, prevenp: @detallefactura.prevenp, producto_id: @detallefactura.producto_id, servicio_id: @detallefactura.servicio_id }
    assert_redirected_to detallefactura_path(assigns(:detallefactura))
  end

  test "should destroy detallefactura" do
    assert_difference('Detallefactura.count', -1) do
      delete :destroy, id: @detallefactura
    end

    assert_redirected_to detallefacturas_path
  end
end
