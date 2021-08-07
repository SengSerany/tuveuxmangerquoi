class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    @link_ingredient_dish = LinkIngredientsDish.create(link_ingredient_dish_params)
    redirect_to dish_path(@link_ingredient_dish.dish_id)
  end

  def update
  end

  def destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :user_id)
  end

  def link_ingredient_dish_params
    params.require(:ingredient).permit(:user_id, :dish_id).merge(ingredient_id: @ingredient.id)
  end
end
