require "application_system_test_case"

class ParticipantesTest < ApplicationSystemTestCase
  setup do
    @participante = participantes(:one)
  end

  test "visiting the index" do
    visit participantes_url
    assert_selector "h1", text: "Participantes"
  end

  test "creating a Participante" do
    visit participantes_url
    click_on "New Participante"

    fill_in "App materno", with: @participante.app_materno
    fill_in "App paterno", with: @participante.app_paterno
    fill_in "Email", with: @participante.email
    fill_in "Evento", with: @participante.evento_id
    fill_in "Nombre", with: @participante.nombre
    click_on "Create Participante"

    assert_text "Participante was successfully created"
    click_on "Back"
  end

  test "updating a Participante" do
    visit participantes_url
    click_on "Edit", match: :first

    fill_in "App materno", with: @participante.app_materno
    fill_in "App paterno", with: @participante.app_paterno
    fill_in "Email", with: @participante.email
    fill_in "Evento", with: @participante.evento_id
    fill_in "Nombre", with: @participante.nombre
    click_on "Update Participante"

    assert_text "Participante was successfully updated"
    click_on "Back"
  end

  test "destroying a Participante" do
    visit participantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participante was successfully destroyed"
  end
end
