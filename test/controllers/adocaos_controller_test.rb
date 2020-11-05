require 'test_helper'

class AdocaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adocao = adocaos(:one)
  end

  test "should get index" do
    get adocaos_url
    assert_response :success
  end

  test "should get new" do
    get new_adocao_url
    assert_response :success
  end

  test "should create adocao" do
    assert_difference('Adocao.count') do
      post adocaos_url, params: { adocao: { adotante_id: @adocao.adotante_id, data_adocao: @adocao.data_adocao, pna_id: @adocao.pna_id } }
    end

    assert_redirected_to adocao_url(Adocao.last)
  end

  test "should show adocao" do
    get adocao_url(@adocao)
    assert_response :success
  end

  test "should get edit" do
    get edit_adocao_url(@adocao)
    assert_response :success
  end

  test "should update adocao" do
    patch adocao_url(@adocao), params: { adocao: { adotante_id: @adocao.adotante_id, data_adocao: @adocao.data_adocao, pna_id: @adocao.pna_id } }
    assert_redirected_to adocao_url(@adocao)
  end

  test "should destroy adocao" do
    assert_difference('Adocao.count', -1) do
      delete adocao_url(@adocao)
    end

    assert_redirected_to adocaos_url
  end
end
