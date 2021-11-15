class AuthorsController < ApplicationController
	def index
	  @author = Author.all
	end
	def show
    	  @author = Author.find(params[:id])
  	end
	def new
	  @author = Author.new
	end
	def edit
	  @author = Author.find(params[:id])
	end
	def create
	  @author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
	  if @author.save
	    redirect_to @author
	  else
	    render 'new'
	  end
	end
	def update
	  @author = Author.find(params[:id])
	  if @author.update(params.require(:author).permit(:first_name, :last_name, :homepage))
	    redirect_to @author
	  else
	    render 'edit'
	  end
	end	
	def destroy
	  @author = Author.find(params[:id])
	  @author.destroy 
	  redirect_to authors_path
	end
end
