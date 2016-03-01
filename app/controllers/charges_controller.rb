
class ChargesController < ApplicationController
	before_action :authenticate_user!
	
	def index
		
		@charges = Chagre.all.page(params[:page]).per(2)
	end

	def create
      @charges = Chagre.new(charge_params)
      
      if @resume.save
         redirect_to chagres_path, notice: "The resume #{@resume.name} has been uploaded."
      else
         render "new"
      end
      
    end

	private
      def charge_params
      params.require(:charge).permit(:name, :char_date, :amount,:allottee_id)

    	
    	
    	
   end
end
