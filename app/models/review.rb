class Review < ApplicationRecord
  self.primary_key= 'review_id'
  belongs_to :courses, through: :review_connectors
end
