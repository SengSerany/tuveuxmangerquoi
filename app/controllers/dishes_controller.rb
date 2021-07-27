class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @newDish = Dish.new
  end

  def create
    @dish = Dish.create(dish_params)
    redirect_to type_path(@dish.type_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def dish_params
    params.require(:dish).permit(:name, :user_id, :type_id)
  end
end
