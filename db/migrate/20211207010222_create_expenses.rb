class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.date :fecha_gasto
      t.integer :monto
      t.references :motive, null: false, foreign_key: true
      t.references :month, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true
      t.references :document, null: false, foreign_key: true

      t.timestamps
    end
  end
end
