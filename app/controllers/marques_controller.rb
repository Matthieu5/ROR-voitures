class MarquesController < ApplicationController
  def index
    @les_marques = Marque.all
  end

  def show
    @la_marque = Marque.find(params[:id])
    @les_voitures = Voiture.all
    @la_voiture = Voiture.find(params[:id])
  end

  def create
    Marque.create(id: params[:id], libelle: params[:libelle])
    redirect_to "/marques"
  end

  def update
    @la_marque = Marque.find(params[:id])
    @la_marque.id = params[:id]
    @la_marque.libelle = params[:libelle]
    @la_marque.save
    redirect_to "/marques/#{params[:id]}"
  end

  def destroy
    @la_marque = Marque.find(params[:id])
    @la_marque.destroy
    redirect_to "/marques"
  end
end

