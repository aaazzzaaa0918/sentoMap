class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :no
      t.string :ku
      t.string :namae
      t.string :jusho
      t.string :tel
      t.string :eigyo
      t.string :kyujitu
      t.float :ido
      t.float :keido

      t.timestamps
    end
  end
end
