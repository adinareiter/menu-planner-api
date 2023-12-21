class MenusController < ApplicationController
  def index
    @menus = Menu.all
    render :index
  end

  def show
    @menu = Menu.find_by(id: params[:id])
    render :show
  end

  def create
    @menu = Menu.create(
      recipe_id: params[:recipe_id],
      event_id: params[:event_id],
    )
    @menu.save
    if @menu.valid?
      render :show
    else
      render json: { errors: @menu.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
