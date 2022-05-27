require "application_system_test_case"

class GinasiosTest < ApplicationSystemTestCase
  setup do
    @ginasio = ginasios(:one)
  end

  test "visiting the index" do
    visit ginasios_url
    assert_selector "h1", text: "Ginasios"
  end

  test "should create ginasio" do
    visit ginasios_url
    click_on "New ginasio"

    fill_in "Bairro", with: @ginasio.bairro
    fill_in "Nome", with: @ginasio.nome
    fill_in "Numero", with: @ginasio.numero
    fill_in "Responsavel", with: @ginasio.responsavel
    fill_in "Rua", with: @ginasio.rua
    fill_in "Telefone", with: @ginasio.telefone
    click_on "Create Ginasio"

    assert_text "Ginasio was successfully created"
    click_on "Back"
  end

  test "should update Ginasio" do
    visit ginasio_url(@ginasio)
    click_on "Edit this ginasio", match: :first

    fill_in "Bairro", with: @ginasio.bairro
    fill_in "Nome", with: @ginasio.nome
    fill_in "Numero", with: @ginasio.numero
    fill_in "Responsavel", with: @ginasio.responsavel
    fill_in "Rua", with: @ginasio.rua
    fill_in "Telefone", with: @ginasio.telefone
    click_on "Update Ginasio"

    assert_text "Ginasio was successfully updated"
    click_on "Back"
  end

  test "should destroy Ginasio" do
    visit ginasio_url(@ginasio)
    click_on "Destroy this ginasio", match: :first

    assert_text "Ginasio was successfully destroyed"
  end
end
