json.extract! cliente, :id, :nombre, :app, :apm, :dni, :fechanac, :distrito, :direccion, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)