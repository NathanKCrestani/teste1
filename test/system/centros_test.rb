require "application_system_test_case"

class CentrosTest < ApplicationSystemTestCase
  setup do
    @centro = centros(:one)
  end

  test "visiting the index" do
    visit centros_url
    assert_selector "h1", text: "Centros"
  end

  test "should create centro" do
    visit centros_url
    click_on "New centro"

    fill_in "Esportivo", with: @centro.Esportivo
    fill_in "Bairro", with: @centro.bairro
    fill_in "Nome", with: @centro.nome
    fill_in "Numero", with: @centro.numero
    fill_in "Responsavel", with: @centro.responsavel
    fill_in "Rua", with: @centro.rua
    fill_in "Telefone", with: @centro.telefone
    click_on "Create Centro"

    assert_text "Centro was successfully created"
    click_on "Back"
  end

  test "should update Centro" do
    visit centro_url(@centro)
    click_on "Edit this centro", match: :first

    fill_in "Esportivo", with: @centro.Esportivo
    fill_in "Bairro", with: @centro.bairro
    fill_in "Nome", with: @centro.nome
    fill_in "Numero", with: @centro.numero
    fill_in "Responsavel", with: @centro.responsavel
    fill_in "Rua", with: @centro.rua
    fill_in "Telefone", with: @centro.telefone
    click_on "Update Centro"

    assert_text "Centro was successfully updated"
    click_on "Back"
  end

  test "should destroy Centro" do
    visit centro_url(@centro)
    click_on "Destroy this centro", match: :first

    assert_text "Centro was successfully destroyed"
  end
end
