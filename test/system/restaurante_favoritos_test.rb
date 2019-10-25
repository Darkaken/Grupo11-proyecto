require "application_system_test_case"

class RestauranteFavoritosTest < ApplicationSystemTestCase
  setup do
    @restaurante_favorito = restaurante_favoritos(:one)
  end

  test "visiting the index" do
    visit restaurante_favoritos_url
    assert_selector "h1", text: "Restaurante Favoritos"
  end

  test "creating a Restaurante favorito" do
    visit restaurante_favoritos_url
    click_on "New Restaurante Favorito"

    fill_in "Rest", with: @restaurante_favorito.rest_id
    fill_in "User", with: @restaurante_favorito.user_id
    click_on "Create Restaurante favorito"

    assert_text "Restaurante favorito was successfully created"
    click_on "Back"
  end

  test "updating a Restaurante favorito" do
    visit restaurante_favoritos_url
    click_on "Edit", match: :first

    fill_in "Rest", with: @restaurante_favorito.rest_id
    fill_in "User", with: @restaurante_favorito.user_id
    click_on "Update Restaurante favorito"

    assert_text "Restaurante favorito was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurante favorito" do
    visit restaurante_favoritos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurante favorito was successfully destroyed"
  end
end
