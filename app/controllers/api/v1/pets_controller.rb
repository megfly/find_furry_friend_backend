class Api::V1::PetsController < ApplicationController
    def index 
        # binding.pry ---- maybe try to do it without pets belonging to a shelter??
        #  shelter = Shelter.find_by_id(params[:shelter_id])
        pets = Pet.all 
        render json: pets
    end 

    def show
        shelter = Shelter.find_by_id(params[:shelter_id])
        pet = Pet.find(params[:id])
    end

    def new
        shelter = Shelter.find_by_id(params[:shelter_id])
        pet = shelter.pets.build
    end 

    def create 
        shelter = Shelter.find(params[:shelter_id])
        pet = shelter.pets.build(pet_params)
        if pet.save 
            render json: pet
        else
            render json: {error: 'error adding pet'}
        end 
    end 

    def edit
        shelter = Shelter.find_by_id(params[:shelter_id])
    end

    def update 
        shelter = Shelter.find_by_id(params[:shelter_id])
        pet = Pet.find_by_id(params[:id])
        if pet.update(pet_params)
            render json: pet
        else
            {error: 'Error updating animal shelter'}
        end 
    end

    def destroy
        shelter = Shelter.find(params[:shelter_id])
        pet = Pet.find(pet.shelter_id)
        pet.destroy 

        render json: shelter 
    end

    private 

    def pet_params 
        params.require(:pet).permit(
            :shelter_id,
            :name,
            :animal_type,
            :breed,
            :size,
            :gender,
            :age,
            :color,
            :image,
            :good_with_children,
            :good_with_dogs,
            :good_with_cats,
            :house_trained,
            :vaccinated
        )
    end 
end