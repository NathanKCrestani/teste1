require "test_helper"

class CentroEsportivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centro_esportivo = centro_esportivos(:one)
  end

  test "should get index" do
    get centro_esportivos_url
    assert_response :success
  end

  test "should get new" do
    get new_centro_esportivo_url
    assert_response :success
  end

  test "should create centro_esportivo" do
    assert_difference("CentroEsportivo.count") do
      post centro_esportivos_url, params: { centro_esportivo: { bairro: @centro_esportivo.bairro, nome: @centro_esportivo.nome, numero: @centro_esportivo.numero, responsavel: @centro_esportivo.responsavel, rua: @centro_esportivo.rua, telefone: @centro_esportivo.telefone } }
    end

    assert_redirected_to centro_esportivo_url(CentroEsportivo.last)
  end

  test "should show centro_esportivo" do
    get centro_esportivo_url(@centro_esportivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_centro_esportivo_url(@centro_esportivo)
    assert_response :success
  end

  test "should update centro_esportivo" do
    patch centro_esportivo_url(@centro_esportivo), params: { centro_esportivo: { bairro: @centro_esportivo.bairro, nome: @centro_esportivo.nome, numero: @centro_esportivo.numero, responsavel: @centro_esportivo.responsavel, rua: @centro_esportivo.rua, telefone: @centro_esportivo.telefone } }
    assert_redirected_to centro_esportivo_url(@centro_esportivo)
  end

  test "should destroy centro_esportivo" do
    assert_difference("CentroEsportivo.count", -1) do
      delete centro_esportivo_url(@centro_esportivo)
    end

    assert_redirected_to centro_esportivos_url
  end
end
