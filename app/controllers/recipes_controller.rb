class RecipesController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :find_recipe, except: [:index, :new, :create]
  before_action :is_user_valid?, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
    6.times { @recipe.ingredients.build }
    6.times { @recipe.instructions.build }
  end

  def create
    @recipe = Recipe.new(recipes_params)
    @recipe.user = current_user?
    if @recipe.save
      redirect_to @recipe.user
    else
      render :new
    end
  end

  def edit
    @recipe.ingredients.find_all
    @recipe.instructions.find_all
  end

  def update
    if @recipe.update_attributes(recipes_params)
      @recipe.save
      redirect_to @recipe.user
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end

  private

  def recipes_params
    params.require(:recipe).permit(:title, :description,
    ingredients_attributes: [:id, :recipe_id, :body, :_destroy],
    instructions_attributes: [:id, :recipe_id, :body, :_destroy])
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def is_user_valid?
    unless equal_with_current_user(@recipe.user)
      flash[:danger] = 'Wrong user!'
      redirect_to user_path(@current_user) and return
    end
  end
end
