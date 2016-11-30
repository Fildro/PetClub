json.extract! factura, :id, :fecha, :cliente_id, :medico_id, :created_at, :updated_at
json.url factura_url(factura, format: :json)