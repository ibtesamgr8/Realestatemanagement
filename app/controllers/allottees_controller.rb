class AllotteesController < ApplicationController
	before_action :authenticate_user!

	def index				  
		@allotees = Allottee.where(plot_id: params[:plot_id])

		
		respond_to do |format|
			format.html
			format.js
		end
	

	end

	def new
	
		@plotid  = params[:plot_id]
    @allotee = Allottee.new
	end

	def create
		@allotee = Allottee.new(allottee_params)	
		
		if @allotee.save
			
			redirect_to plots_path(), notice: "Plot created."
		 else
		 	render 'new'
		 end	

	end

	def edit
		@plots = Plot.find(params[:id])
	end

	def update
		@plots = Plot.find(params[:id])
		if @plots.update(plot_params)
			redirect_to plots_path(), notice: "plot Updated."
		else
			render 'edit'
		end
	end
	
	def destroy
		Plot.find(params[:id]).destroy
		redirect_to plots_path() ,notice: "plot Delete."
		
	end




private 
	def allottee_params	

	params.require(:allottee).permit(:registration_no	,
			:name,	  	 
      :cnic_no,
      :cell_no,
      :email_id,
      :curren_address,
      :other_address,
      :registration_date,
      :description,
      :status,
      :name_of_kin,
      :kin_cnic,
      :kin_address,
      :kin_cell_no,
      :relation_with_kin,
	    :plot_id)
    end


end
