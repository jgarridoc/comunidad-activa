class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :calle
      t.string :numero
      t.string :departamento

      t.timestamps
    end
  end
end
