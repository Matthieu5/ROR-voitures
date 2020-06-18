class Voiture < ApplicationRecord
  belongs_to :marque
  belongs_to :client, required: false
end