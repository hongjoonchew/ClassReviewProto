class Material < ApplicationRecord
  self.primary_key= 'material_id'
  belongs_to :course
  has_many :books
  has_many :notes
  has_many :syllabis
end
