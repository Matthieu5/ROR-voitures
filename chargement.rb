class Voiture < ApplicationRecord
  belongs_to :marque
  belongs_to :client

  def self.chargement
    puts "voitures.xml"

    transaction do
      Voiture.delete_all
      Marque.delete_all

      require 'rexml/document'
      include REXML
      contenu = File.read('voitures.xml')
      voitures = Hash.from_xml(contenu)

      debugger

      voitures.each do |voiture|
        if voiture.marque
          Voiture.create(id: params[:id], immatriculation: params[:immatriculation], couleur: params[:couleur], marque_id: params[:marque_id], modele: params[:modele])
        else
          Marque.create(id: params[:id], libelle: params[:libelle]) //dans import xml : nom
          Voiture.create(id: params[:id], immatriculation: params[:immatriculation], couleur: params[:couleur], marque_id: params[:marque_id], modele: params[:modele])
        end
      end
    end
  end
end