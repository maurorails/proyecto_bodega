class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :nombre
      t.string :apellido
      t.string :codigovendedor

      t.timestamps
    end
  end
end
