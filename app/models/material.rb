class Material < ApplicationRecord
	self.primary_key= 'material_id'
    belongs_to :course
end
