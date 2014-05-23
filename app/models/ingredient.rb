class Ingredient < ActiveRecord::Base
	has_many :recipes

	validates :name, :price, :yield, presence: true
  	validates :price, numericality: {greater_than_or_equal_to: 0.01}
  	validates :yield, numericality: {greater_than_or_equal_to: 0.01}

end
