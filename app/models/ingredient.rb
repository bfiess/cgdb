class Ingredient < ActiveRecord::Base
	belongs_to :glaze
	belongs_to :material
	
		scope :without_colorant, -> { joins(:material).where(materials: { colorant: false }) }
		scope :with_colorant, -> { joins(:material).where(materials: { colorant: true }) }

end
