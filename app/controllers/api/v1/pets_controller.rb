class Api::V1::PetsController < ApplicationController
    def index 
        # binding.pry ---- maybe try to do it without pets belonging to a shelter??
        #  shelter = Shelter.find_by_id(params[:shelter_id])
        pets = Pet.all 
        render json: pets
    end 

    def show
        pet = Pet.find(params[:id])
        render json: pet
    end

    def new
        pet = Pet.new
        render json: pet
    end 

    def create 
     pet = Pet.new(pet_params)
        if pet.save
            render json: pet
        else
            render json: {error: 'Error creating pet'}
        end 
    end 

    def edit
        pet = Pet.find(params[:id])
    end

    def update 
        pet = Pet.find(params[:id])
        if pet.update(pet_params)
            render json: pet
        else
            {error: 'Error updating pet'}
        end 
    end

    def destroy
        pet = Pet.find(params[:id])
        pet.destroy

        render json: pet
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