json.extract! comentario_restaurante, :id, :user_id, :rest_id, :fecha, :puntaje, :contenido, :created_at, :updated_at
json.url comentario_restaurante_url(comentario_restaurante, format: :json)
