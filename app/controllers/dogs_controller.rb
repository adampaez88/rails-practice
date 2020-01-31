class DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end 

    def create
        dog = Dog.create(
            lifespan: [:lifespan],
            size: [:size]
        )
        render json: dog
    end
end
