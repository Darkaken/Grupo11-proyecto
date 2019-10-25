class Usuario < ApplicationRecord
  has_many :ordens
  has_many :restaurante_favoritos
  has_many :comentario_restaurantes
  has_many :comentario_platos
  has_many :restaurantes, :through => :restaurante_favoritos
  has_many :restaurante, :through => :comentario_restaurantes
  has_many :plato, :through => :comentario_platos
end
