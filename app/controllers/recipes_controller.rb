class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render :show
  end

  def create
    @recipe = Recipe.create(
      title: params[:title],
      ingredients: params[:ingredients],
      directions: params[:directions],
      time: params[:time],
    )
    if @recipe.save?
      render :show
    else
      render json: { errors: @recipe.status.errors.full_messages }
    end
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update(
      title: params[:title] || @recipe.title,
      ingredients: params[:ingredients] || @recipe.ingredients,
      directions: params[:directions] || @recipe.directions,
      time: params[:time] || @recipe.time,
    )
    if @recipe.save?
      render :show
    else
      render json: { errors: @recipe.status.errors.full_messages }
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe.delete?
      render json: { message: "Recipe successfully deleted" }
    else
      render json: { errors: @recipe.status.errors.full_messages }
    end
  end
end
