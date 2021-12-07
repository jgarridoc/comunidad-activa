class CreateZipCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :zip_codes do |t|
      t.integer :codigo_postal

      t.timestamps
    end
  end
end
