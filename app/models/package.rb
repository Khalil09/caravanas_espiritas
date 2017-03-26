class Package < ApplicationRecord
	has_attached_file :image, styles: {thumbnail: "300x100"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	has_many :years,  inverse_of: :package, autosave: true, dependent: :destroy
	accepts_nested_attributes_for :years, allow_destroy: true
	validates :image, attachment_presence: true
end
