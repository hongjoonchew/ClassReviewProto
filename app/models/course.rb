class Course < ApplicationRecord
  has_many :reviews
  validates :course_id, uniqueness: true, presence: true
  validates :description, presence: true
end
