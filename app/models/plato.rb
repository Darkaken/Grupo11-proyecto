class Plato < ApplicationRecord
  belongs_to :restaurante
  has_many :comentario_platos
  has_many :contiene_platos
  has_many :usuarios, :through => :comentario_platos
  has_many :ordens, :through => :contiene_platos
end
