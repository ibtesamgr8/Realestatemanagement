class Allottee < ActiveRecord::Base
	
	belongs_to :plot
	validates :name, presence: true
	validates :cnic_no, presence: true
	validates :curren_address, presence: true
	has_many  :charges 
	
	before_create :update_allottee_status
	attr_accessor :docs_name


	private
	  def update_allottee_status
	  	@allottee = self.plot.allottees.max(id)
	  	@allottee.update_attribute(:status, "ABCD")
	  end



end
	