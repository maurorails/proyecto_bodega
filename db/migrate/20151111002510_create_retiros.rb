class CreateRetiros < ActiveRecord::Migration
  def change
    create_table :retiros do |t|
      t.date :horaretiro
      t.references :bodega, index: true
      t.references :vendedor, index: true

      t.timestamps
    end
  end
end
