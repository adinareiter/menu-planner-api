class RecipesController < ApplicationController
  before_action :authenticate_user

  def index
    @recipes = current_user.recipes
    render :index
  end

  def show
    @recipe = current_user.recipes.find_by(id: params[:id])
    render :show
  end

  def create
    @recipe = Recipe.create(
      title: params[:title],
      ingredients: params[:ingredients],
      directions: params[:directions],
      time: params[:time],
      image: params[:image],
      user_id: current_user.id,
    )
    @recipe.save
    if @recipe.valid?
      render :show
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update(
      title: params[:title] || @recipe.title,
      ingredients: params[:ingredients] || @recipe.ingredients,
      directions: params[:directions] || @recipe.directions,
      time: params[:time] || @recipe.time,
      image: params[:image] || @recipe.image,
    )
    @recipe.save
    if @recipe.valid?
      render :show
    else
      render json: { errors: @recipe.status.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: { message: "Recipe successfully deleted" }
  end
end
