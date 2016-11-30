json.extract! detallefactura, :id, :factura_id, :mascot_id, :servicio_id, :producto_id, :cantidad, :prevenp, :created_at, :updated_at
json.url detallefactura_url(detallefactura, format: :json)