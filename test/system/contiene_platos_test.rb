require "application_system_test_case"

class ContienePlatosTest < ApplicationSystemTestCase
  setup do
    @contiene_plato = contiene_platos(:one)
  end

  test "visiting the index" do
    visit contiene_platos_url
    assert_selector "h1", text: "Contiene Platos"
  end

  test "creating a Contiene plato" do
    visit contiene_platos_url
    click_on "New Contiene Plato"

    fill_in "Order", with: @contiene_plato.order_id
    fill_in "Plt", with: @contiene_plato.plt_id
    click_on "Create Contiene plato"

    assert_text "Contiene plato was successfully created"
    click_on "Back"
  end

  test "updating a Contiene plato" do
    visit contiene_platos_url
    click_on "Edit", match: :first

    fill_in "Order", with: @contiene_plato.order_id
    fill_in "Plt", with: @contiene_plato.plt_id
    click_on "Update Contiene plato"

    assert_text "Contiene plato was successfully updated"
    click_on "Back"
  end

  test "destroying a Contiene plato" do
    visit contiene_platos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contiene plato was successfully destroyed"
  end
end
