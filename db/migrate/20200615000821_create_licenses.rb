class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.integer :idSubskrypcji
      t.integer :idProduktu

      t.timestamps
    end
  end
end
