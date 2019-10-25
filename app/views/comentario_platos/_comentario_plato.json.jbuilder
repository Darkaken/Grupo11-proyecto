json.extract! comentario_plato, :id, :user_id, :plt_id, :fecha, :puntaje, :contenido, :created_at, :updated_at
json.url comentario_plato_url(comentario_plato, format: :json)
