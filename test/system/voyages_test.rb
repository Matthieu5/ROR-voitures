require "application_system_test_case"

class VoyagesTest < ApplicationSystemTestCase
  setup do
    @voyage = voyages(:one)
  end

  test "visiting the index" do
    visit voyages_url
    assert_selector "h1", text: "Voyages"
  end

  test "creating a Voyage" do
    visit voyages_url
    click_on "New Voyage"

    fill_in "Date depart", with: @voyage.date_depart
    fill_in "Duree", with: @voyage.duree
    fill_in "Pays", with: @voyage.pays
    click_on "Create Voyage"

    assert_text "Voyage was successfully created"
    click_on "Back"
  end

  test "updating a Voyage" do
    visit voyages_url
    click_on "Edit", match: :first

    fill_in "Date depart", with: @voyage.date_depart
    fill_in "Duree", with: @voyage.duree
    fill_in "Pays", with: @voyage.pays
    click_on "Update Voyage"

    assert_text "Voyage was successfully updated"
    click_on "Back"
  end

  test "destroying a Voyage" do
    visit voyages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voyage was successfully destroyed"
  end
end
