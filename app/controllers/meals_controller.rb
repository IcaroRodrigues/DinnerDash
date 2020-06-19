class MealsController < ApplicationController

    before_action :set_meal, only: [:show, :update, :destroy]
 
    def index

        @meal = Meal.all
        render json: @meal

    end


    def show

        render json: @meal, status: 200

    end

    def create

        @meal = Meal.new(meal_params)

        if @meal.save
            
            render json: @meal, status: 201
        
        else

            render json: @meal.errors, status: :unprocessable_entity

        end

    end

    def update

        if @meal.update(meal_params)

            render json: @meal, status: 200

        else

            render json: @meal.errors, status: :unprocessable_entity

        end

    end

    def destroy

        @meal.destroy

    end


    private

    def set_meal
        @meal = Meal.find(params[:id])
    end

    def meal_params
        params.require( :meal ).permit( :name, :description, :price, :available, :meal_category_id )
    end

end 