class ClientsVoyagesController < ApplicationController
  def index
    @les_clients_voyages = ClientsVoyage.all
    @les_voyages = Voyage.all
    @les_clients = Client.all
  end

  def show
    @les_clients_voyages = ClientsVoyage.all
    @le_clients_voyage = ClientsVoyage.where(voyage_id: params[:voyage_id]).first
    @les_voyages = Voyage.all
    @les_clients = Client.all
    @le_client = Client.find(params[:id])
  end

  def create
    ClientsVoyage.create(client_id: params[:client_ids], voyage_id: params[:voyage_ids])
  end

  def destroy
    @le_clients_voyage = ClientsVoyage.find(params[:id])
    @le_clients_voyage.destroy
  end
end
