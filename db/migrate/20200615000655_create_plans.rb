class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :Nazwa
      t.integer :Cena
      t.integer :CzasTrwania
      t.integer :DarmowyOkres
      t.integer :idProduktu
      t.integer :IloscLicencji

      t.timestamps
    end
  end
end
