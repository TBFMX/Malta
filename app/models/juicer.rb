class Juicer < ActiveRecord::Base
	belongs_to :juice
	#has_one :juice
	#belongs_to :juiceweek
	has_many :juiceweek
end
