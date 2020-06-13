class MealCategoriesController < ApplicationController
    def index
        @meal_categories = MealCategory.all
        render json: @meal_categories
    end
    def create
        @meal_categories = MealCategory.new(meal_category_params)
        if @meal_categories.save
            render json: @meal_categories, status: :created, location: @meal_categories
        else
            render json: @meal_categories.error, status: :unprocessable_entity
        end    
    end  
    private
    def meal_category_params
        params.require(:meal_category).permit(:name)
    end    
end        