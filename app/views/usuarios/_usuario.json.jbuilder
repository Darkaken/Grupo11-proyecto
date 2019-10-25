json.extract! usuario, :id, :tipo, :nombre, :correo, :direccion, :imagen, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
