require "application_system_test_case"

class ClientsVoyagesTest < ApplicationSystemTestCase
  setup do
    @clients_voyage = clients_voyages(:one)
  end

  test "visiting the index" do
    visit clients_voyages_url
    assert_selector "h1", text: "Clients Voyages"
  end

  test "creating a Clients voyage" do
    visit clients_voyages_url
    click_on "New Clients Voyage"

    fill_in "Client", with: @clients_voyage.client_id
    fill_in "Voyage", with: @clients_voyage.voyage_id
    click_on "Create Clients voyage"

    assert_text "Clients voyage was successfully created"
    click_on "Back"
  end

  test "updating a Clients voyage" do
    visit clients_voyages_url
    click_on "Edit", match: :first

    fill_in "Client", with: @clients_voyage.client_id
    fill_in "Voyage", with: @clients_voyage.voyage_id
    click_on "Update Clients voyage"

    assert_text "Clients voyage was successfully updated"
    click_on "Back"
  end

  test "destroying a Clients voyage" do
    visit clients_voyages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clients voyage was successfully destroyed"
  end
end
