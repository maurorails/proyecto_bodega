require 'test_helper'

class RetirosControllerTest < ActionController::TestCase
  setup do
    @retiro = retiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retiro" do
    assert_difference('Retiro.count') do
      post :create, retiro: { bodega_id: @retiro.bodega_id, horaretiro: @retiro.horaretiro, vendedor_id: @retiro.vendedor_id }
    end

    assert_redirected_to retiro_path(assigns(:retiro))
  end

  test "should show retiro" do
    get :show, id: @retiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retiro
    assert_response :success
  end

  test "should update retiro" do
    patch :update, id: @retiro, retiro: { bodega_id: @retiro.bodega_id, horaretiro: @retiro.horaretiro, vendedor_id: @retiro.vendedor_id }
    assert_redirected_to retiro_path(assigns(:retiro))
  end

  test "should destroy retiro" do
    assert_difference('Retiro.count', -1) do
      delete :destroy, id: @retiro
    end

    assert_redirected_to retiros_path
  end
end
