class Ticket < ApplicationRecord
  # belongs_to :usuario
  validates :carrete_id, presence: true
  validates :user_id, presence: true
end
