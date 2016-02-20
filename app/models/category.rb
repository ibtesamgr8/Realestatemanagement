class Category < ActiveRecord::Base
	validates_presence_of :name
	
	has_many :plots, dependent: :destroy 
end
