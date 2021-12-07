class CreateMotives < ActiveRecord::Migration[6.1]
  def change
    create_table :motives do |t|
      t.string :motivo

      t.timestamps
    end
  end
end
