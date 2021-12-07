class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :monto_pago
      t.integer :saldo_acumulado
      t.date :fecha_pago
      t.integer :total_pago
      t.references :payment_method, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :motive, null: false, foreign_key: true
      t.references :month, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
