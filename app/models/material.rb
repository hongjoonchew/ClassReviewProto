class Material < ApplicationRecord
    belongs_to :course
	has_attached_file :image
end
