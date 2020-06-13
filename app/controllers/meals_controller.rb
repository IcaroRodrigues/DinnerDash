class MealsController < ApplicationController
    def index
        @meals = Meal.all
        render json: @meals
    end
    def create
        @meals = Meal.new(meal_params)
        if @meals.save
            render json: @meals, status: :created, location: @meals
        else
            render json: @meals.errors, status: :unprocessable_entity
        end    
    end  
    private
    def meal_params
        params.require(:meal).permit(:name,:description,:price,:avaible,:meal_category_id)
    end  
end 