class Course < ApplicationRecord
  has_many :reviews
  has_many :materials
  validates :course_id, uniqueness: true, presence: true
  validates :description, presence: true
end
