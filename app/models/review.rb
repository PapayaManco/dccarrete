class Review < ApplicationRecord
  belongs_to :servicio

  validates :rating, presence: true
  validates :comment, presence: true

  def blank_stars
    5 - rating.to_i
  end
end
