require "application_system_test_case"

class CentroEsportivosTest < ApplicationSystemTestCase
  setup do
    @centro_esportivo = centro_esportivos(:one)
  end

  test "visiting the index" do
    visit centro_esportivos_url
    assert_selector "h1", text: "Centro esportivos"
  end

  test "should create centro esportivo" do
    visit centro_esportivos_url
    click_on "New centro esportivo"

    fill_in "Bairro", with: @centro_esportivo.bairro
    fill_in "Nome", with: @centro_esportivo.nome
    fill_in "Numero", with: @centro_esportivo.numero
    fill_in "Responsavel", with: @centro_esportivo.responsavel
    fill_in "Rua", with: @centro_esportivo.rua
    fill_in "Telefone", with: @centro_esportivo.telefone
    click_on "Create Centro esportivo"

    assert_text "Centro esportivo was successfully created"
    click_on "Back"
  end

  test "should update Centro esportivo" do
    visit centro_esportivo_url(@centro_esportivo)
    click_on "Edit this centro esportivo", match: :first

    fill_in "Bairro", with: @centro_esportivo.bairro
    fill_in "Nome", with: @centro_esportivo.nome
    fill_in "Numero", with: @centro_esportivo.numero
    fill_in "Responsavel", with: @centro_esportivo.responsavel
    fill_in "Rua", with: @centro_esportivo.rua
    fill_in "Telefone", with: @centro_esportivo.telefone
    click_on "Update Centro esportivo"

    assert_text "Centro esportivo was successfully updated"
    click_on "Back"
  end

  test "should destroy Centro esportivo" do
    visit centro_esportivo_url(@centro_esportivo)
    click_on "Destroy this centro esportivo", match: :first

    assert_text "Centro esportivo was successfully destroyed"
  end
end
