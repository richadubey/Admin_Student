class CollegesController < ApplicationController
	def new
		 @college = College.new
	end
	def index
		if params[:search]
			@colleges = College.search(params[:search])
		else
		  @colleges = College.all
		end
	end
  
  def create
  	@college = College.new(college_params)
  	if @college.save
  		redirect_to @college
    else
    	render 'new'
    end
	end
	def search
    @college = College.search(params[:search])

  end
	
	def show
		 @college= College.find(params[:id])
	end

	private
	def college_params
		 params.require(:college).permit(:name, :address,:state,:city,:phone)
		
	end
  
end
