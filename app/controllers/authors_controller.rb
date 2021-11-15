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
	def create
	  @author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
	  if @author.save
	    redirect_to root_path, notice: 'Success!'
	  else
	    render 'new'
	  end
	end
end
