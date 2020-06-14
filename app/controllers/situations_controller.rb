class SituationsController < ApplicationController

    before_action :set_situation, only: [:show, :update, :destroy]
 
    def index

        @situation = Situation.all
        render json: @situation

    end


    def show

        render json: @situation, status: 200

    end

    def create

        @situation = Situation.new(situation_params)

        if @situation.save
            
            render json: @situation, status: 201
        
        else

            render json: @situation.errors, status: :unprocessable_entity

        end

    end

    def update

        if @situation.update(situation_params)

            render json: @situation, status: 200

        else

            render json: @situation.errors, status: :unprocessable_entity

        end

    end

    def destroy

        @situation.destroy

    end


    private

    def set_situation
        @situation = Situation.find(params[:id])
    end

    def situation_params
        params.require( :situation ).permit( :description )
    end
end 