class Plot < ActiveRecord::Base
validates_uniqueness_of :plot_number
	belongs_to :category 
	belongs_to :user
	has_many :allottees 
end
