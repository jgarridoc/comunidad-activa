json.extract! document, :id, :numero, :document_type_id, :created_at, :updated_at
json.url document_url(document, format: :json)
