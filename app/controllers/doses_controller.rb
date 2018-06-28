class DosesController < ApplicationController
  def index
    @doses = Dose.where("cocktail_id = ?", params[:cocktail_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
