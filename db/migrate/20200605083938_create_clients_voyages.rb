class CreateClientsVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_voyages do |t|
      t.integer :client_id
      t.integer :voyage_id

      t.timestamps
    end
  end
end
