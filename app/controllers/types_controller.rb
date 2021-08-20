class TypesController < ApplicationController
  include ApplicationHelper
  before_action :require_login

  def index
    @types = Type.where(user_id: current_user.id)
    @type = Type.new
  end

  def show
    @type = Type.find(params[:id])
    @dish = Dish.new
    @dishes = Dish.where(user_id: current_user.id, type_id: @type.id)
  end

  def new
  end

  def create
    @type = Type.new(type_params)
    if @type.valid?
      @type.save
      redirect_to types_path
    else
      flash[:alert] = @type.errors.full_messages.first
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

  def type_params
    params.require(:type).permit(:name, :user_id)
  end
end
