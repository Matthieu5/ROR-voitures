class VoituresController < ApplicationController
  def index
    @les_voitures = Voiture.all
    @les_marques = Marque.all
    @les_clients = Client.all
  end

  def show
    @la_voiture = Voiture.find(params[:id])
    @les_clients = Client.all
    @les_marques = Marque.all
  end

  def show_par_immatriculation
    if @la_voiture
      @la_voiture.find(params[:immatriculation])
      @la_voiture.find(params[:id])
    end
    redirect_to "/voitures/#{params[:id]}"
  end

  def create
    Voiture.create(immatriculation: params[:immatriculation], couleur: params[:couleur], marque_id: params[:marque_id], modele: params[:modele], client_id: params[:client_id], date_mise_en_service: params[:date_mise_en_service])
    redirect_to "/voitures"
  end

  def update
    @la_voiture = Voiture.find(params[:id])
    @la_voiture.immatriculation = params[:immatriculation]
    @la_voiture.couleur = params[:couleur]
    @la_voiture.marque_id = params[:marque_id]
    @la_voiture.modele = params[:modele]
    @la_voiture.client_id = params[:client_id]
    @la_voiture.date_mise_en_service = params[:date_mise_en_service]
    @la_voiture.save
    redirect_to "/voitures/#{params[:id]}"
  end

  def destroy
    @la_voiture = Voiture.find(params[:id])
    @la_voiture.destroy
    redirect_to "/voitures"
  end
end

