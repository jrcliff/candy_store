class CandiesController < ApplicationController
    def index
       @candy = Candy.all
    end

    def show
        @candy = Candy.find(params[:id])
    end

    def new
        
    end

    def create
        candy = Candy.create(name: params[:name], calories: params[:calories], wrapper_color: params[:wrapper_color], has_nuts: params[:has_nuts])
        redirect_to show_path(candy.id)
    end
end