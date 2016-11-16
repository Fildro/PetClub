json.extract! producto, :id, :nombre, :categoria, :unidadmedida, :stock, :precosto, :preven, :descrip, :obs, :created_at, :updated_at
json.url producto_url(producto, format: :json)