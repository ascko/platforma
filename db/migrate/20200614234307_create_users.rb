class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :imie
      t.string :nazwisko
      t.string :nrtel

      t.timestamps
    end
  end
end
