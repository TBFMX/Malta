class Juice < ActiveRecord::Base
	has_one :recipes
	#belongs_to :juicer
    has_many :juicers
    has_many :juiceweek

    #validates :name, presence: true

end
