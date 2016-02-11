class Clay < ActiveRecord::Base
	belongs_to :atmosphere
	has_many :ingredients, dependent: :destroy
	has_many :materials, through: :ingredients
	accepts_nested_attributes_for :ingredients, reject_if: lambda { |a| a[:amt].blank? }, :allow_destroy => true
end
