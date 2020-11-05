require 'test_helper'

class AdotantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adotante = adotantes(:one)
  end

  test "should get index" do
    get adotantes_url
    assert_response :success
  end

  test "should get new" do
    get new_adotante_url
    assert_response :success
  end

  test "should create adotante" do
    assert_difference('Adotante.count') do
      post adotantes_url, params: { adotante: { email: @adotante.email, estado: @adotante.estado, marcou_comprometimento: @adotante.marcou_comprometimento, nome: @adotante.nome, pedido_oracao: @adotante.pedido_oracao, telefone: @adotante.telefone } }
    end

    assert_redirected_to adotante_url(Adotante.last)
  end

  test "should show adotante" do
    get adotante_url(@adotante)
    assert_response :success
  end

  test "should get edit" do
    get edit_adotante_url(@adotante)
    assert_response :success
  end

  test "should update adotante" do
    patch adotante_url(@adotante), params: { adotante: { email: @adotante.email, estado: @adotante.estado, marcou_comprometimento: @adotante.marcou_comprometimento, nome: @adotante.nome, pedido_oracao: @adotante.pedido_oracao, telefone: @adotante.telefone } }
    assert_redirected_to adotante_url(@adotante)
  end

  test "should destroy adotante" do
    assert_difference('Adotante.count', -1) do
      delete adotante_url(@adotante)
    end

    assert_redirected_to adotantes_url
  end
end
