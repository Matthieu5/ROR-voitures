require "application_system_test_case"

class VoituresTest < ApplicationSystemTestCase
  setup do
    @voiture = voitures(:one)
  end

  test "visiting the index" do
    visit voitures_url
    assert_selector "h1", text: "Voitures"
  end

  test "creating a Voiture" do
    visit voitures_url
    click_on "New Voiture"

    fill_in "Client", with: @voiture.client_id
    fill_in "Couleur", with: @voiture.couleur
    fill_in "Date mise en service", with: @voiture.date_mise_en_service
    fill_in "Immatriculation", with: @voiture.immatriculation
    fill_in "Marque", with: @voiture.marque_id
    fill_in "Modele", with: @voiture.modele
    click_on "Create Voiture"

    assert_text "Voiture was successfully created"
    click_on "Back"
  end

  test "updating a Voiture" do
    visit voitures_url
    click_on "Edit", match: :first

    fill_in "Client", with: @voiture.client_id
    fill_in "Couleur", with: @voiture.couleur
    fill_in "Date mise en service", with: @voiture.date_mise_en_service
    fill_in "Immatriculation", with: @voiture.immatriculation
    fill_in "Marque", with: @voiture.marque_id
    fill_in "Modele", with: @voiture.modele
    click_on "Update Voiture"

    assert_text "Voiture was successfully updated"
    click_on "Back"
  end

  test "destroying a Voiture" do
    visit voitures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voiture was successfully destroyed"
  end
end
