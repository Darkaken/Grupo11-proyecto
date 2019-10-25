require 'test_helper'

class ContienePlatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contiene_plato = contiene_platos(:one)
  end

  test "should get index" do
    get contiene_platos_url
    assert_response :success
  end

  test "should get new" do
    get new_contiene_plato_url
    assert_response :success
  end

  test "should create contiene_plato" do
    assert_difference('ContienePlato.count') do
      post contiene_platos_url, params: { contiene_plato: { order_id: @contiene_plato.order_id, plt_id: @contiene_plato.plt_id } }
    end

    assert_redirected_to contiene_plato_url(ContienePlato.last)
  end

  test "should show contiene_plato" do
    get contiene_plato_url(@contiene_plato)
    assert_response :success
  end

  test "should get edit" do
    get edit_contiene_plato_url(@contiene_plato)
    assert_response :success
  end

  test "should update contiene_plato" do
    patch contiene_plato_url(@contiene_plato), params: { contiene_plato: { order_id: @contiene_plato.order_id, plt_id: @contiene_plato.plt_id } }
    assert_redirected_to contiene_plato_url(@contiene_plato)
  end

  test "should destroy contiene_plato" do
    assert_difference('ContienePlato.count', -1) do
      delete contiene_plato_url(@contiene_plato)
    end

    assert_redirected_to contiene_platos_url
  end
end
