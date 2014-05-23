class Recipe < ActiveRecord::Base
	belongs_to :juice
	belongs_to :ingredient
	
	validates :ingredient, presence: true,  :on => :update

	def checkup

	end	
end
