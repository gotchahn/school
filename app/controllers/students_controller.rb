class StudentsController < ApplicationController
  def index
  	@students = Student.includes(:career).order(:name)
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
  		redirect_to students_path, notice: "Se agrego exitosamente."
  	else
      flash[:error] = "Fallo"
  		render :new
  	end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to @student
    else
      render :edit
    end
  end

  def destroy
  	@student = Student.find(params[:id])
  	@student.destroy
  	redirect_to students_path
  end

  def statistic
    @student = Student.find(params[:id])
  end

  def ranking
    @students = Student.all
    @students = @students.sort{ |s1,s2| s2.trophies.sum(:points) <=> s1.trophies.sum(:points) }
  end

  def supremes
    @students = Student.magna_cum_lade
  end

  protected

  	def student_params
  		params.require(:student).permit(:name, 
        :email, :phone, :birthday_at, 
        :career_id, :graduation_index)
  	end


end
