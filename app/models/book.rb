class Book < ApplicationRecord
  self.primary_key= 'ISBN'
  belongs_to :material
end
