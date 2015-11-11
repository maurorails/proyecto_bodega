class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :descripcion
      t.integer :cantidad
      t.date :fechaingreso
      t.string :sku

      t.timestamps
    end
  end
end
