class ClientsVoyage < ApplicationRecord
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :voyages
end
