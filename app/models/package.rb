class Package < ApplicationRecord
	has_attached_file :image, styles: {thumbnail: "350x200!", 
									   mobile: "400x350!"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates_length_of :description, maximum: 140, allow_blank: false

	has_many :years,  inverse_of: :package, autosave: true, dependent: :destroy
	accepts_nested_attributes_for :years, allow_destroy: true
	validates :image, attachment_presence: true
end
