class OrdersController < ApplicationController

    before_action :set_order, only: [:show, :update, :destroy]
 
    def index

        @order = Order.all
        render json: @order

    end


    def show

        render json: @order, status: 200

    end

    def create

        @order = Order.new(order_params)

        if @order.save
            
            render json: @order, status: 201
        
        else

            render json: @order.errors, status: :unprocessable_entity

        end

    end

    def update

        if @order.update(order_params)

            render json: @order, status: 200

        else

            render json: @order.errors, status: :unprocessable_entity

        end

    end

    def destroy

        @order.destroy

    end


    private

    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require( :order ).permit( :price ).permit( :quantity )
    end

end 