class Voyage < ApplicationRecord
  has_and_belongs_to_many :clients_voyages
end
