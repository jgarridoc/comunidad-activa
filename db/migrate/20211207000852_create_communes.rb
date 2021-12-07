class CreateCommunes < ActiveRecord::Migration[6.1]
  def change
    create_table :communes do |t|
      t.string :comuna

      t.timestamps
    end
  end
end
