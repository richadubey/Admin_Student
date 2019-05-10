class MarksheetsController < ApplicationController
	def index
		@marksheets = Marksheet.all
		@students  = Student.all
	end


	def new
		@marksheet = Marksheet.new
	end

	def show
		@marksheet = Marksheet.find(params[:id])
		@student = Student.find(@marksheet.student_id)
		puts @student.to_json
	end

	def create
		@marksheet = Marksheet.new(marksheet_params)
  	if @marksheet.save
  		redirect_to @marksheet
    else
    	render 'new'
    end
	end
	private
	def marksheet_params
		 params.require(:marksheet).permit(:roll_no, :physics,:chemistry,:mathematics,:student_id)
		
	end
end
