class CreateVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :voyages do |t|
      t.string :pays
      t.date :date_depart
      t.string :duree

      t.timestamps
    end
  end
end
