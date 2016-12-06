class Material < ApplicationRecord
    belongs_to :course
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ['application/pdf']
end
