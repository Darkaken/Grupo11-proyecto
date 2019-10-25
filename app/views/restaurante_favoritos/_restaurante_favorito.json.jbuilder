json.extract! restaurante_favorito, :id, :user_id, :rest_id, :created_at, :updated_at
json.url restaurante_favorito_url(restaurante_favorito, format: :json)
