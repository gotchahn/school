class TrophiesController < ApplicationController
  def new
  	@student = Student.find(params[:student_id])
  	@trophy = @student.trophies.build
  end

  def create
  	@student = Student.find(params[:student_id])
  	@trophy = @student.trophies.build(trophy_params)
  
  	if @trophy.save
  		redirect_to @student
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  end

  def destroy
    @student = Student.find(params[:student_id])
    @trophy = @student.trophies.find(params[:id])
    @trophy.destroy
    redirect_to @student
  end

  protected

  	def trophy_params
  		params.require(:trophy).permit(:description, :points)
  	end
end
