class StudentsController < ApplicationController
  def index
  	@students = Student.order(:name)
  end

  def show
  	@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)

  	if @student.save
  		redirect_to students_path
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  	@student = Student.find(params[:id])
  	@student.destroy
  	redirect_to students_path
  end

  protected

  	def student_params
  		params.require(:student).permit(:name, :email, :phone, :birthday_at)
  	end


end
