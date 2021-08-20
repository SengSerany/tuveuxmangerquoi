class ListsController < ApplicationController
  include ApplicationHelper
  before_action :require_login

  def index
    @lists = List.where(user_id: current_user.id)
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @types = Type.where(user_id: current_user.id)
    @link_list_dishes = LinkListsDish.new
    @link_lists_dishes = LinkListsDish.where(user_id: current_user.id, list_id: @list.id)
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.valid?
      @list.save
      redirect_to list_path(@list.id)
    else
      flash[:alert] = @list.errors.full_messages.first
      redirect_to lists_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end
end
