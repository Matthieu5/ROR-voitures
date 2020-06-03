json.extract! voiture, :id, :immatriculation, :couleur, :marque_id, :modele, :date_mise_en_service, :client_id, :created_at, :updated_at
json.url voiture_url(voiture, format: :json)
