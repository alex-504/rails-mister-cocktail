class DosesController < ApplicationController
  
  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @dose
    if @dose.save
      redirect_to cocktails_path
    else
      render :new
  end  


  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])

  end
    
end
