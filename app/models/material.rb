class Material < ActiveRecord::Base
	has_many :ingredients
	has_many :glazes, through: :ingredients
	
	scope :colorant, -> { where(colorant: true) }
	scope :base, -> { where(colorant: false) }
end
