json.extract! medico, :id, :nombre, :app, :apm, :dni, :especialidad, :created_at, :updated_at
json.url medico_url(medico, format: :json)