class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :idKlienta
      t.integer :idPlanu

      t.timestamps
    end
  end
end
