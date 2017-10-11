class Review < ApplicationRecord
  belongs_to :restaurant

  # A review must have a parent restaurant.
  validates_associated :restaurant

  RATINGS = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATINGS, allow_nil: false }
end
