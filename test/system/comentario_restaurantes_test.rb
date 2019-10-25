require "application_system_test_case"

class ComentarioRestaurantesTest < ApplicationSystemTestCase
  setup do
    @comentario_restaurante = comentario_restaurantes(:one)
  end

  test "visiting the index" do
    visit comentario_restaurantes_url
    assert_selector "h1", text: "Comentario Restaurantes"
  end

  test "creating a Comentario restaurante" do
    visit comentario_restaurantes_url
    click_on "New Comentario Restaurante"

    fill_in "Contenido", with: @comentario_restaurante.contenido
    fill_in "Fecha", with: @comentario_restaurante.fecha
    fill_in "Puntaje", with: @comentario_restaurante.puntaje
    fill_in "Rest", with: @comentario_restaurante.rest_id
    fill_in "User", with: @comentario_restaurante.user_id
    click_on "Create Comentario restaurante"

    assert_text "Comentario restaurante was successfully created"
    click_on "Back"
  end

  test "updating a Comentario restaurante" do
    visit comentario_restaurantes_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @comentario_restaurante.contenido
    fill_in "Fecha", with: @comentario_restaurante.fecha
    fill_in "Puntaje", with: @comentario_restaurante.puntaje
    fill_in "Rest", with: @comentario_restaurante.rest_id
    fill_in "User", with: @comentario_restaurante.user_id
    click_on "Update Comentario restaurante"

    assert_text "Comentario restaurante was successfully updated"
    click_on "Back"
  end

  test "destroying a Comentario restaurante" do
    visit comentario_restaurantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comentario restaurante was successfully destroyed"
  end
end
