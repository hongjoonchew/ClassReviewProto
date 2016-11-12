class Note < ApplicationRecord
  self.primary_key= 'note_id'
  belongs_to :material
end
