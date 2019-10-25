require "application_system_test_case"

class OrdensTest < ApplicationSystemTestCase
  setup do
    @orden = ordens(:one)
  end

  test "visiting the index" do
    visit ordens_url
    assert_selector "h1", text: "Ordens"
  end

  test "creating a Orden" do
    visit ordens_url
    click_on "New Orden"

    fill_in "Direccion entrega", with: @orden.direccion_entrega
    check "Estado" if @orden.estado
    fill_in "Hora entrega", with: @orden.hora_entrega
    fill_in "Medio pago", with: @orden.medio_pago
    fill_in "Notas", with: @orden.notas
    fill_in "User", with: @orden.user_id
    click_on "Create Orden"

    assert_text "Orden was successfully created"
    click_on "Back"
  end

  test "updating a Orden" do
    visit ordens_url
    click_on "Edit", match: :first

    fill_in "Direccion entrega", with: @orden.direccion_entrega
    check "Estado" if @orden.estado
    fill_in "Hora entrega", with: @orden.hora_entrega
    fill_in "Medio pago", with: @orden.medio_pago
    fill_in "Notas", with: @orden.notas
    fill_in "User", with: @orden.user_id
    click_on "Update Orden"

    assert_text "Orden was successfully updated"
    click_on "Back"
  end

  test "destroying a Orden" do
    visit ordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orden was successfully destroyed"
  end
end
