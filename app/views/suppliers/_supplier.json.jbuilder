json.extract! supplier, :id, :rut, :nombre, :apellido, :correo, :supplier_type_id, :phone_id, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
