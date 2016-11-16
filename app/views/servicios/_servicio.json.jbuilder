json.extract! servicio, :id, :nombre, :tipo, :precio, :obs, :mascota, :medico, :cliente, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)