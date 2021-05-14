class Api::V1::SheltersController < ApplicationController
    def index 
         #we dont need instance variables because we arent passing the instances to the erb/views
        shelters = Shelter.all 
        # render json: @shelters
    end 
end
