require 'test_helper'

class ComentarioPlatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentario_plato = comentario_platos(:one)
  end

  test "should get index" do
    get comentario_platos_url
    assert_response :success
  end

  test "should get new" do
    get new_comentario_plato_url
    assert_response :success
  end

  test "should create comentario_plato" do
    assert_difference('ComentarioPlato.count') do
      post comentario_platos_url, params: { comentario_plato: { contenido: @comentario_plato.contenido, fecha: @comentario_plato.fecha, plt_id: @comentario_plato.plt_id, puntaje: @comentario_plato.puntaje, user_id: @comentario_plato.user_id } }
    end

    assert_redirected_to comentario_plato_url(ComentarioPlato.last)
  end

  test "should show comentario_plato" do
    get comentario_plato_url(@comentario_plato)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentario_plato_url(@comentario_plato)
    assert_response :success
  end

  test "should update comentario_plato" do
    patch comentario_plato_url(@comentario_plato), params: { comentario_plato: { contenido: @comentario_plato.contenido, fecha: @comentario_plato.fecha, plt_id: @comentario_plato.plt_id, puntaje: @comentario_plato.puntaje, user_id: @comentario_plato.user_id } }
    assert_redirected_to comentario_plato_url(@comentario_plato)
  end

  test "should destroy comentario_plato" do
    assert_difference('ComentarioPlato.count', -1) do
      delete comentario_plato_url(@comentario_plato)
    end

    assert_redirected_to comentario_platos_url
  end
end
