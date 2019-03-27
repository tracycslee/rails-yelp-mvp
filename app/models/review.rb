class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, :numericality => true # returns 0 not nil
  belongs_to :restaurant
end
