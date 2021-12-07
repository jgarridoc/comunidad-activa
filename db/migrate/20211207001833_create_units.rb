class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :tipo
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :commune, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :region, null: false, foreign_key: true
      t.references :zip_code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
