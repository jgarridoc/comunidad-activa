json.extract! payment, :id, :monto_pago, :saldo_acumulado, :fecha_pago, :total_pago, :payment_method_id, :user_id, :motive_id, :month_id, :year_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
