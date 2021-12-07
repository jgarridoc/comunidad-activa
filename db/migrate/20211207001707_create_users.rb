class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido_1
      t.string :apellido_2
      t.string :rut
      t.string :correo
      t.string :clave
      t.references :role, null: false, foreign_key: true
      t.references :fee, null: false, foreign_key: true
      t.references :phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
