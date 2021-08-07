class LinkIngredientsDishesController < ApplicationController
  def create
    @link_ingredients_dish = LinkIngredientsDish.create(link_ingredients_dish_params)
    redirect_back(fallback_location: dishes_path)
  end

  def update
  end

  def destroy
  end

  private

  def link_ingredients_dish_params
    params.require(:link_ingredients_dish).permit(:ingredient_id, :user_id, :dish_id)
  end

end
