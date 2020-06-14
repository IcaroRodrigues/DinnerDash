class OrderMealsController < ApplicationController

  before_action :set_meal, only: [:show, :update, :destroy]

  def index
    @meal_categories = Meal_category.all
    render json:@meal_categories, status: 200
  end
 
  def show
    render json:@meal_category, status: 200
  end

  def create
    @meal_category = Meal_category.new(meal_params)
    if @Meal_category.save
      render json:@meal_category, status: 201
    else
      render json:@Meal_category.errors, status: :unprocessable_entity
    end   
  end

  def update
    if @meal_category.update(meal_params)
      render json: @meal_category, status: 200
    else
      render json: @Meal_category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @meal_category.destroy
  end

  private

  def set_meal
    @mealCategory = Meal_category.find(params[:id])
  end

  def meal_params
    params.require(:meal_category).permit( :name )
  end

end 