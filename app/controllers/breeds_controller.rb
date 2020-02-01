class BreedsController < ApplicationController
    def index
        breeds = Breed.all
        render json: breeds, include: [:dogs]
    end

    def create
        breed = Breed.create(name: params[:name])
        render json: breed
    end

    def update
        breed = Breed.find(params[:id])
        breed.update(name: params[:name])
        render json: breed
    end

    def destroy
        breed = Breed.find(params[:id])
        breed.destroy
        render json: {status: 204}
    end
end
