class LinkListsDishesController < ApplicationController
  def create
    @link_list_dish = LinkListsDish.new(link_list_dish_params)
    if @link_list_dish.valid?
      @link_list_dish.save
      redirect_to list_path(@link_list_dish.list_id)
    else
      flash[:alert] = @link_list_dish.errors.full_messages.first
      redirect_to list_path(@link_list_dish.list_id)
    end
  end

  def update
  end

  def destroy
  end

  def link_list_dish_params
    params.require(:link_lists_dish).permit(:list_id, :user_id, :dish_id)
  end
end
