class Syllabi < ApplicationRecord
  self.primary_key= 'syllabus_id'
  belongs_to :material
end
