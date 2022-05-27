require "application_system_test_case"

class ZicasTest < ApplicationSystemTestCase
  setup do
    @zica = zicas(:one)
  end

  test "visiting the index" do
    visit zicas_url
    assert_selector "h1", text: "Zicas"
  end

  test "should create zica" do
    visit zicas_url
    click_on "New zica"

    fill_in "Bairro", with: @zica.bairro
    fill_in "Nome", with: @zica.nome
    fill_in "Numero", with: @zica.numero
    fill_in "Responsavel", with: @zica.responsavel
    fill_in "Rua", with: @zica.rua
    fill_in "Telefone", with: @zica.telefone
    click_on "Create Zica"

    assert_text "Zica was successfully created"
    click_on "Back"
  end

  test "should update Zica" do
    visit zica_url(@zica)
    click_on "Edit this zica", match: :first

    fill_in "Bairro", with: @zica.bairro
    fill_in "Nome", with: @zica.nome
    fill_in "Numero", with: @zica.numero
    fill_in "Responsavel", with: @zica.responsavel
    fill_in "Rua", with: @zica.rua
    fill_in "Telefone", with: @zica.telefone
    click_on "Update Zica"

    assert_text "Zica was successfully updated"
    click_on "Back"
  end

  test "should destroy Zica" do
    visit zica_url(@zica)
    click_on "Destroy this zica", match: :first

    assert_text "Zica was successfully destroyed"
  end
end
