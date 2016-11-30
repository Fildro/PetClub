require 'test_helper'

class MascotsControllerTest < ActionController::TestCase
  setup do
    @mascot = mascots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mascots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mascot" do
    assert_difference('Mascot.count') do
      post :create, mascot: { cliente_id: @mascot.cliente_id, colorma: @mascot.colorma, fechanacma: @mascot.fechanacma, nombrema: @mascot.nombrema, pesoma: @mascot.pesoma, razama: @mascot.razama, sexoma: @mascot.sexoma }
    end

    assert_redirected_to mascot_path(assigns(:mascot))
  end

  test "should show mascot" do
    get :show, id: @mascot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mascot
    assert_response :success
  end

  test "should update mascot" do
    patch :update, id: @mascot, mascot: { cliente_id: @mascot.cliente_id, colorma: @mascot.colorma, fechanacma: @mascot.fechanacma, nombrema: @mascot.nombrema, pesoma: @mascot.pesoma, razama: @mascot.razama, sexoma: @mascot.sexoma }
    assert_redirected_to mascot_path(assigns(:mascot))
  end

  test "should destroy mascot" do
    assert_difference('Mascot.count', -1) do
      delete :destroy, id: @mascot
    end

    assert_redirected_to mascots_path
  end
end
