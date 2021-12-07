json.extract! user, :id, :nombre, :apellido_1, :apellido_2, :rut, :correo, :clave, :role_id, :fee_id, :phone_id, :created_at, :updated_at
json.url user_url(user, format: :json)
