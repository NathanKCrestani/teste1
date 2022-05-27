require "test_helper"

class GinasiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ginasio = ginasios(:one)
  end

  test "should get index" do
    get ginasios_url
    assert_response :success
  end

  test "should get new" do
    get new_ginasio_url
    assert_response :success
  end

  test "should create ginasio" do
    assert_difference("Ginasio.count") do
      post ginasios_url, params: { ginasio: { bairro: @ginasio.bairro, nome: @ginasio.nome, numero: @ginasio.numero, responsavel: @ginasio.responsavel, rua: @ginasio.rua, telefone: @ginasio.telefone } }
    end

    assert_redirected_to ginasio_url(Ginasio.last)
  end

  test "should show ginasio" do
    get ginasio_url(@ginasio)
    assert_response :success
  end

  test "should get edit" do
    get edit_ginasio_url(@ginasio)
    assert_response :success
  end

  test "should update ginasio" do
    patch ginasio_url(@ginasio), params: { ginasio: { bairro: @ginasio.bairro, nome: @ginasio.nome, numero: @ginasio.numero, responsavel: @ginasio.responsavel, rua: @ginasio.rua, telefone: @ginasio.telefone } }
    assert_redirected_to ginasio_url(@ginasio)
  end

  test "should destroy ginasio" do
    assert_difference("Ginasio.count", -1) do
      delete ginasio_url(@ginasio)
    end

    assert_redirected_to ginasios_url
  end
end
