class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @ingredient = Ingredient.new
    @user_ingredients = Ingredient.where(user_id: current_user.id)
    @link_ingredient_dish = LinkIngredientsDish.new
    @link_ingredients_dishes = LinkIngredientsDish.where(user_id: current_user.id, dish_id: @dish.id)
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.valid?
      @dish.save
      redirect_to type_path(@dish.type_id)
    else
      flash[:alert] = @dish.errors.full_messages.first
      redirect_to types_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :user_id, :type_id)
  end
end
