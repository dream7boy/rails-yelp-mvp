class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATINGS, allow_nil: false }
end
