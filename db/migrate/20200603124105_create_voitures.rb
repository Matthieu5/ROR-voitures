class CreateVoitures < ActiveRecord::Migration[6.0]
  def change
    create_table :voitures do |t|
      t.string :immatriculation
      t.string :couleur
      t.integer :marque_id
      t.string :modele
      t.date :date_mise_en_service
      t.integer :client_id

      t.timestamps
    end
  end
end
