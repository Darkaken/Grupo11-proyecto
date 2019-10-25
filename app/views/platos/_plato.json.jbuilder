json.extract! plato, :id, :rest_id, :nombre, :precio, :descripcion, :porciones, :imagen, :created_at, :updated_at
json.url plato_url(plato, format: :json)
