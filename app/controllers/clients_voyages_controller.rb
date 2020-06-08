class ClientsVoyagesController < ApplicationController
  def index
    @les_clients_voyages = ClientsVoyage.all
    @les_voyages = Voyage.all
    @les_clients = Client.all
  end

  def show
    @le_clients_voyage = ClientsVoyage.find(params[:id])
    @les_clients_voyages = ClientsVoyage.all
    @les_voyages = Voyage.all
    @les_clients = Client.all
  end

  def create
    ClientsVoyage.create(client_id: params[:client_id], voyage_id: params[:voyage_id])
    redirect_to "/clients_voyages"
  end

  def update
    @le_client_voyage = ClientsVoyage.find(params[:id])
    @le_client_voyage.client_id = params[:client_id]
    @le_client_voyage.voyage_id = params[:voyage_id]
    @le_client_voyage.save
    redirect_to "/clients_voyages/#{params[:id]}"
  end

  def destroy
    @le_client_voyage = ClientsVoyage.find(params[:id])
    @le_client_voyage.destroy
    redirect_to "/clients_voyages"
  end

 # Only allow a list of trusted parameters through.
  def clients_voyage_params
    params.require(:clients_voyage).permit(:client_ids, :voyage_ids)
  end
end
