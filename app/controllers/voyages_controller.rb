class VoyagesController < ApplicationController
  def index
    @les_voyages = Voyage.all
  end

  def show
    @le_voyage = Voyage.find(params[:id])
  end

  def create
    Voyage.create(pays: params[:pays], date_depart: params[:date_depart], duree: params[:duree])
    redirect_to "/voyages"
  end

  def update
    @le_voyage = Voyage.find(params[:id])
    @le_voyage.pays = params[:pays]
    @le_voyage.date_depart = params[:date_depart]
    @le_voyage.duree = params[:duree]
    @le_voyage.save
    redirect_to "/voyages/#{params[:id]}"
  end

  def destroy
    @le_voyage = Voyage.find(params[:id])
    @le_voyage.destroy
    redirect_to "/voyages"
  end
end

