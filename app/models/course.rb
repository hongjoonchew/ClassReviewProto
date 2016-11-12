class Course < ApplicationRecord
  self.primary_key= 'course_id'
  has_many :reviews, :through => review_connectors
end
