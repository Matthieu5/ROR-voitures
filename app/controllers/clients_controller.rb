class ClientsController < ApplicationController
  def index
    @les_clients = Client.all
  end

  def show
    @le_client = Client.find(params[:id])
    @la_voiture = Voiture.find(params[:id])
  end

  def create
    Client.create(nom: params[:nom], prenom: params[:prenom], adresse: params[:adresse], numero: params[:numero], date_naissance: params[:date_naissance])
    redirect_to "/clients"
  end

  def update
    @le_client = Client.find(params[:id])
    @le_client.nom = params[:nom]
    @le_client.prenom = params[:prenom]
    @le_client.adresse = params[:adresse]
    @le_client.numero = params[:numero]
    @le_client.date_naissance = params[:date_naissance]
    @le_client.save
    redirect_to "/clients/#{params[:id]}"
  end

  def destroy
    @le_client = Client.find(params[:id])
    @le_client.destroy
    redirect_to "/clients"
  end
end


