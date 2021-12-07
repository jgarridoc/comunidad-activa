class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.references :supplier_type, null: false, foreign_key: true
      t.references :phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
