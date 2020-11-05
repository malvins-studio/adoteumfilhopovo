require "application_system_test_case"

class AdotantesTest < ApplicationSystemTestCase
  setup do
    @adotante = adotantes(:one)
  end

  test "visiting the index" do
    visit adotantes_url
    assert_selector "h1", text: "Adotantes"
  end

  test "creating a Adotante" do
    visit adotantes_url
    click_on "New Adotante"

    fill_in "Email", with: @adotante.email
    fill_in "Estado", with: @adotante.estado
    check "Marcou comprometimento" if @adotante.marcou_comprometimento
    fill_in "Nome", with: @adotante.nome
    fill_in "Pedido oracao", with: @adotante.pedido_oracao
    fill_in "Telefone", with: @adotante.telefone
    click_on "Create Adotante"

    assert_text "Adotante was successfully created"
    click_on "Back"
  end

  test "updating a Adotante" do
    visit adotantes_url
    click_on "Edit", match: :first

    fill_in "Email", with: @adotante.email
    fill_in "Estado", with: @adotante.estado
    check "Marcou comprometimento" if @adotante.marcou_comprometimento
    fill_in "Nome", with: @adotante.nome
    fill_in "Pedido oracao", with: @adotante.pedido_oracao
    fill_in "Telefone", with: @adotante.telefone
    click_on "Update Adotante"

    assert_text "Adotante was successfully updated"
    click_on "Back"
  end

  test "destroying a Adotante" do
    visit adotantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adotante was successfully destroyed"
  end
end
