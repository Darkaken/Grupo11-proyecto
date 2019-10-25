require 'test_helper'

class RestauranteFavoritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurante_favorito = restaurante_favoritos(:one)
  end

  test "should get index" do
    get restaurante_favoritos_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurante_favorito_url
    assert_response :success
  end

  test "should create restaurante_favorito" do
    assert_difference('RestauranteFavorito.count') do
      post restaurante_favoritos_url, params: { restaurante_favorito: { rest_id: @restaurante_favorito.rest_id, user_id: @restaurante_favorito.user_id } }
    end

    assert_redirected_to restaurante_favorito_url(RestauranteFavorito.last)
  end

  test "should show restaurante_favorito" do
    get restaurante_favorito_url(@restaurante_favorito)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurante_favorito_url(@restaurante_favorito)
    assert_response :success
  end

  test "should update restaurante_favorito" do
    patch restaurante_favorito_url(@restaurante_favorito), params: { restaurante_favorito: { rest_id: @restaurante_favorito.rest_id, user_id: @restaurante_favorito.user_id } }
    assert_redirected_to restaurante_favorito_url(@restaurante_favorito)
  end

  test "should destroy restaurante_favorito" do
    assert_difference('RestauranteFavorito.count', -1) do
      delete restaurante_favorito_url(@restaurante_favorito)
    end

    assert_redirected_to restaurante_favoritos_url
  end
end
