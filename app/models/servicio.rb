class Servicio < ApplicationRecord
  # belongs_to :usuario
  # has_many :comunas
  # has_many :reviews
  validates :nombre, presence: true
  validates :descripcion, presence: true
  validates :categoria, presence: true
  # validates :approved, presence: true
end
