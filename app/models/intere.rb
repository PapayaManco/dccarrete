class Intere < ApplicationRecord
  # belongs_to :user
  validates :monto, presence: true
  validates :carrete_id, presence: true
  validates :user_id, presence: true
end
