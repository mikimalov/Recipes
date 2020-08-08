class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    4.times { @recipe.ingredients.build }
    4.times { @recipe.instructions.build }
  end

  def create
    @recipe = Recipe.new(recipes_params)
    @recipe.user = current_user?
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.find_all
    @recipe.instructions.find_all
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipes_params)
      @recipe.save
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  private

  def recipes_params
    params.require(:recipe)
    .permit(:title, :description,
    ingredients_attributes: [:id, :body, :recipe_id, :_destroy],
    instructions_attributes: [:id, :body,:recipe_id, :_destroy])
  end
end
