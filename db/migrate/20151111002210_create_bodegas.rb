class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.integer :columna
      t.integer :fila
      t.references :producto, index: true

      t.timestamps
    end
  end
end
