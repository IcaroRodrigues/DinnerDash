class OrderMealsController < ApplicationController
   
    before_action :set_order_meal, only: [:show, :update, :destroy]
 
    def index

        @order_meal = OrderMeal.all
        render json: @order_meal

    end


    def show

        render json: @order_meal, status: 200

    end

    def create

        @order_meal = OrderMeal.new(order_meal_params)

        if @order_meal.save
            
            render json: @order_meal, status: 201
        
        else

            render json: @order_meal.errors, status: :unprocessable_entity

        end

    end

    def update

        if @order_meal.update(order_meal_params)

            render json: @order_meal, status: 200

        else

            render json: @order_meal.errors, status: :unprocessable_entity

        end

    end

    def destroy

        @order_meals.destroy

    end


    private

    def set_order_meal
        @order_meal = OrderMeal.find(params[:id])
    end

    def order_meal_params
        params.require( :order_meal ).permit( :quantity )
    end
end 