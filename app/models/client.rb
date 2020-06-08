class Client < ApplicationRecord
  has_many :voitures
  has_and_belongs_to_many :clients_voyages
end
