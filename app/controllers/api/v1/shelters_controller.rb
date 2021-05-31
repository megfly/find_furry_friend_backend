class Api::V1::SheltersController < ApplicationController

    require 'rest-client'

    def get_shelters 
    end 
    
    def index
        shelters = Shelter.all
        render json: shelters
      end

    def show
        shelter = Shelter.find(params[:id])
        render json: shelter
    end 

    def new
        shelter = Shelter.new
        render json: shelter
    end 

    def create
        shelter = Shelter.new(shelter_params)
        if shelter.save
            render json: shelter
        else
            render json: {error: 'Error creating animal shelter'}
        end 
    end 

    def edit
        shelter = Shelter.find(params[:id])
    end

    def update
        shelter = Shelter.find(params[:id])
        if shelter.update(shelter_params)
            render json: shelter
        else
            {error: 'Error updating animal shelter'}
        end 
    end

    def destroy
        shelter = Shelter.find(params[:id])
        shelter.destroy

        render json: shelter
    end 

    private

    def shelter_params
        params.require(:shelter).permit(:name, :street_address, :city, :state, :zipcode, :email, :phone)
    end 
end
