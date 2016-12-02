class Review < ApplicationRecord
  belongs_to :course
  validates :professor, presence: true
  validates :review, presence: true
end
