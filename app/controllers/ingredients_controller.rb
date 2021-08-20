class IngredientsController < ApplicationController

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.valid?
      @ingredient.save
      @link_ingredient_dish = LinkIngredientsDish.create(link_ingredient_dish_params)
      redirect_to dish_path(@link_ingredient_dish.dish_id)
    else
      flash[:alert] = @ingredient.errors.full_messages.first
      redirect_to dish_path(params[:ingredient][:dish_id]), success: "validation validé ou pas"
    end
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
