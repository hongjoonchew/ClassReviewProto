class Review < ApplicationRecord
  self.primary_key= 'review_id'
  belongs_to :course
  belongs_to :user
end
