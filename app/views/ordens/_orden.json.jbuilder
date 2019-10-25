json.extract! orden, :id, :user_id, :medio_pago, :direccion_entrega, :hora_entrega, :estado, :notas, :created_at, :updated_at
json.url orden_url(orden, format: :json)
