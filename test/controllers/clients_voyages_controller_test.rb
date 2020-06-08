require 'test_helper'

class ClientsVoyagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_voyage = clients_voyages(:one)
  end

  test "should get index" do
    get clients_voyages_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_voyage_url
    assert_response :success
  end

  test "should create clients_voyage" do
    assert_difference('ClientsVoyage.count') do
      post clients_voyages_url, params: { clients_voyage: { client_id: @clients_voyage.client_id, voyage_id: @clients_voyage.voyage_id } }
    end

    assert_redirected_to clients_voyage_url(ClientsVoyage.last)
  end

  test "should show clients_voyage" do
    get clients_voyage_url(@clients_voyage)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_voyage_url(@clients_voyage)
    assert_response :success
  end

  test "should update clients_voyage" do
    patch clients_voyage_url(@clients_voyage), params: { clients_voyage: { client_id: @clients_voyage.client_id, voyage_id: @clients_voyage.voyage_id } }
    assert_redirected_to clients_voyage_url(@clients_voyage)
  end

  test "should destroy clients_voyage" do
    assert_difference('ClientsVoyage.count', -1) do
      delete clients_voyage_url(@clients_voyage)
    end

    assert_redirected_to clients_voyages_url
  end
end
