class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.valid? ? @ingredient.save : "" #redirect_to new_cocktail_path

    redirect_to ingredients_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    # @cocktail.save

    redirect_to ingredients_path
  end

  def destroy
    this_ingredient = Ingredient.find(params[:id])
    this_ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end