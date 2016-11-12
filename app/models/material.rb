class Material < ApplicationRecord
  self.primary_key= 'material_id'
  has_many :notes; :books; :syllabis
  belongs_to :course
end
