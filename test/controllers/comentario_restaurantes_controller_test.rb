require 'test_helper'

class ComentarioRestaurantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentario_restaurante = comentario_restaurantes(:one)
  end

  test "should get index" do
    get comentario_restaurantes_url
    assert_response :success
  end

  test "should get new" do
    get new_comentario_restaurante_url
    assert_response :success
  end

  test "should create comentario_restaurante" do
    assert_difference('ComentarioRestaurante.count') do
      post comentario_restaurantes_url, params: { comentario_restaurante: { contenido: @comentario_restaurante.contenido, fecha: @comentario_restaurante.fecha, puntaje: @comentario_restaurante.puntaje, rest_id: @comentario_restaurante.rest_id, user_id: @comentario_restaurante.user_id } }
    end

    assert_redirected_to comentario_restaurante_url(ComentarioRestaurante.last)
  end

  test "should show comentario_restaurante" do
    get comentario_restaurante_url(@comentario_restaurante)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentario_restaurante_url(@comentario_restaurante)
    assert_response :success
  end

  test "should update comentario_restaurante" do
    patch comentario_restaurante_url(@comentario_restaurante), params: { comentario_restaurante: { contenido: @comentario_restaurante.contenido, fecha: @comentario_restaurante.fecha, puntaje: @comentario_restaurante.puntaje, rest_id: @comentario_restaurante.rest_id, user_id: @comentario_restaurante.user_id } }
    assert_redirected_to comentario_restaurante_url(@comentario_restaurante)
  end

  test "should destroy comentario_restaurante" do
    assert_difference('ComentarioRestaurante.count', -1) do
      delete comentario_restaurante_url(@comentario_restaurante)
    end

    assert_redirected_to comentario_restaurantes_url
  end
end
