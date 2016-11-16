class CareersController < ApplicationController
  def index
  	@careers = Career.unscoped.order(:slug)
  end

  def new
  	@career = Career.new
  end

  def create
  	@career = Career.new(career_params)

  	if @career.save
  		redirect_to careers_path, notice: "Se agrego exitosamente"
  	else
  		render :new
  	end
  end

  def edit
  	@career = Career.find(params[:id])
  end

  def update
  	@career = Career.find(params[:id])

  	if @career.update_attributes(career_params)
  		redirect_to careers_path, notice: "Se ha actualizado exitosamente"
 		else
 			render :edit
 		end
  end

  protected

  	def career_params
  		params.require(:career).permit!
  	end
end
