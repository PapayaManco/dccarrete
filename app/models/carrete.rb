class Carrete < ApplicationRecord
  # has_one :comuna, through: :user
  # belongs_to :usuario
  validates :nombre, presence: true
  validates :direccion, presence: true
  validates :max_asistentes, presence: true
  validates :user_id, presence: true
  validates :monto_minimo, presence: true
  validates :approved, presence: true
end
