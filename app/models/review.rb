class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, uniqueness: false
  validates :rating, presence: true, uniqueness: false, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
