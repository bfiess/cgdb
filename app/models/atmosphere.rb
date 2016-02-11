class Atmosphere < ActiveRecord::Base
	has_many :glazes
	has_many :clays
end
