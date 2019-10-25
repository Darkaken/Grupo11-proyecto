require "application_system_test_case"

class ComentarioPlatosTest < ApplicationSystemTestCase
  setup do
    @comentario_plato = comentario_platos(:one)
  end

  test "visiting the index" do
    visit comentario_platos_url
    assert_selector "h1", text: "Comentario Platos"
  end

  test "creating a Comentario plato" do
    visit comentario_platos_url
    click_on "New Comentario Plato"

    fill_in "Contenido", with: @comentario_plato.contenido
    fill_in "Fecha", with: @comentario_plato.fecha
    fill_in "Plt", with: @comentario_plato.plt_id
    fill_in "Puntaje", with: @comentario_plato.puntaje
    fill_in "User", with: @comentario_plato.user_id
    click_on "Create Comentario plato"

    assert_text "Comentario plato was successfully created"
    click_on "Back"
  end

  test "updating a Comentario plato" do
    visit comentario_platos_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @comentario_plato.contenido
    fill_in "Fecha", with: @comentario_plato.fecha
    fill_in "Plt", with: @comentario_plato.plt_id
    fill_in "Puntaje", with: @comentario_plato.puntaje
    fill_in "User", with: @comentario_plato.user_id
    click_on "Update Comentario plato"

    assert_text "Comentario plato was successfully updated"
    click_on "Back"
  end

  test "destroying a Comentario plato" do
    visit comentario_platos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comentario plato was successfully destroyed"
  end
end
