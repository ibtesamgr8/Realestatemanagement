
class PlotsController < ApplicationController

before_action :authenticate_user!

	def index
		
		@plots = Plot.all.page(params[:page]).per(2)
	end

	def new
    @plots = Plot.new
	end

	def create
		@plots = Plot.new(plot_params)	
	
		if @plots.save
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
	def plot_params	
    params.require(:plot).permit(:plot_number, :membership,
     :desciption, :is_corner, :is_westopen, :category_id,
     :size_of_plot, :user_id)
    end



end
