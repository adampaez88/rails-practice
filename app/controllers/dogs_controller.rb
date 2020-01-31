class DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end 

    def create
        dog = Dog.create(
            lifespan: params[:lifespan],
            size: params[:size]
        )
        # render or redirect after this method
        # redirect_to 'https://localhost:3001'
        render json: dog
    end

    def update
        dog = Dog.find(params[:id])
        dog.update(
            lifespan: params[:lifespan],
            size: params[:size]
        )
        # render or redirect after this method
        # redirect_to 'https://localhost:3001'
        render json: dog
    end

    def destroy
        dog = Dog.find(params[:id])
        dog.destroy
        render json: {status: 204}
    end

end
