require "application_system_test_case"

class AdocaosTest < ApplicationSystemTestCase
  setup do
    @adocao = adocaos(:one)
  end

  test "visiting the index" do
    visit adocaos_url
    assert_selector "h1", text: "Adocaos"
  end

  test "creating a Adocao" do
    visit adocaos_url
    click_on "New Adocao"

    fill_in "Adotante", with: @adocao.adotante_id
    fill_in "Data adocao", with: @adocao.data_adocao
    fill_in "Pna", with: @adocao.pna_id
    click_on "Create Adocao"

    assert_text "Adocao was successfully created"
    click_on "Back"
  end

  test "updating a Adocao" do
    visit adocaos_url
    click_on "Edit", match: :first

    fill_in "Adotante", with: @adocao.adotante_id
    fill_in "Data adocao", with: @adocao.data_adocao
    fill_in "Pna", with: @adocao.pna_id
    click_on "Update Adocao"

    assert_text "Adocao was successfully updated"
    click_on "Back"
  end

  test "destroying a Adocao" do
    visit adocaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adocao was successfully destroyed"
  end
end
