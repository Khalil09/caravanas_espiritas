class Year < ApplicationRecord
  belongs_to :package
  has_many :users
end
