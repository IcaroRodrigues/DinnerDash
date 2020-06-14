class MealCategoriesController < ApplicationController

    before_action :set_meal_category, only: [:show, :update, :destroy]
 
    def index

        @meal_category = MealCategory.all
        render json: @meal_category

    end


    def show

        render json: @meal_category, status: 200

    end

    def create

        @meal_category = MealCategory.new(meal_category_params)

        if @meal_category.save
            
            render json: @meal_category, status: 201
        
        else

            render json: @meal_category.errors, status: :unprocessable_entity

        end

    end

    def update

        if @meal_category.update(meal_category_params)

            render json: @meal_category, status: 200

        else

            render json: @meal_category.errors, status: :unprocessable_entity

        end

    end

    def destroy

        @meal_category.destroy

    end


    private

    def set_meal_category
        @meal_category = MealCategory.find(params[:id])
    end

    def meal_category_params
        params.require( :meal_category ).permit( :name )
    end

end        