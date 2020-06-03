json.extract! client, :id, :nom, :prenom, :adresse, :numero, :date_naissance, :created_at, :updated_at
json.url client_url(client, format: :json)
