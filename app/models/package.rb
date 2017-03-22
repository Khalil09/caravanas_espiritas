class Package < ApplicationRecord
	has_many :years,  inverse_of: :package, autosave: true
	accepts_nested_attributes_for :years
end
