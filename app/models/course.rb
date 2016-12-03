class Course < ApplicationRecord
  has_many :reviews
  validates_uniqueness_of :course_id
end
