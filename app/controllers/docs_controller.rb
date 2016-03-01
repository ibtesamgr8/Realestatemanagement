class DocsController < ApplicationController
  def index
      @resumes = Doc.all
   end
   
   def new
      @resume = Doc.new
   end
   
   def create
      @resume = Doc.new(resume_params)
      
      if @resume.save
         redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @resume = Doc.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
   end
   
   private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
end
