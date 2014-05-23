class Juiceweek < ActiveRecord::Base
	belongs_to :juicer
	belongs_to :juice
end
