class Review < ApplicationRecord
  RATINGS = (1..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATINGS }
end
