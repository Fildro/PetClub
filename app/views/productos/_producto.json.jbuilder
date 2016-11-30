json.extract! producto, :id, :nombrep, :categoriap, :unidadmedidap, :stockp, :precostop, :prevenp, :created_at, :updated_at
json.url producto_url(producto, format: :json)