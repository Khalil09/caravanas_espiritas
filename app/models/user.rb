class User < ApplicationRecord
	belongs_to :year
	# has_many :packages, :through => :years
end
