require "test_helper"

class ZicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zica = zicas(:one)
  end

  test "should get index" do
    get zicas_url
    assert_response :success
  end

  test "should get new" do
    get new_zica_url
    assert_response :success
  end

  test "should create zica" do
    assert_difference("Zica.count") do
      post zicas_url, params: { zica: { bairro: @zica.bairro, nome: @zica.nome, numero: @zica.numero, responsavel: @zica.responsavel, rua: @zica.rua, telefone: @zica.telefone } }
    end

    assert_redirected_to zica_url(Zica.last)
  end

  test "should show zica" do
    get zica_url(@zica)
    assert_response :success
  end

  test "should get edit" do
    get edit_zica_url(@zica)
    assert_response :success
  end

  test "should update zica" do
    patch zica_url(@zica), params: { zica: { bairro: @zica.bairro, nome: @zica.nome, numero: @zica.numero, responsavel: @zica.responsavel, rua: @zica.rua, telefone: @zica.telefone } }
    assert_redirected_to zica_url(@zica)
  end

  test "should destroy zica" do
    assert_difference("Zica.count", -1) do
      delete zica_url(@zica)
    end

    assert_redirected_to zicas_url
  end
end
