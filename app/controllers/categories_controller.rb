class CategoriesController < ApplicationController
	
	def index
		@categories = Category.all.page(params[:page]).per(2)
	end
	
	def new
    @category = Category.new
	end

	def create
		@category = Category.new(category_params)	
	
		if @category.save
			redirect_to categories_path(), notice: "Category created."
		 else
		 	render 'new'
		 end	

	end
	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			redirect_to categories_path(), notice: "Category created."
		else
			render 'edit'
		end
	end
	
	def destroy
		Category.find(params[:id]).destroy
		redirect_to categories_path()
		
	end




private 
	def category_params	
    params.require(:category).permit(:name, :categorytype)
    end


end