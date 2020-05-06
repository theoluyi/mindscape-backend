class PerceptionsController < ApplicationController
    def index 
        @perceptions = Perception.all
        render json: @perceptions
    end 

    def create
        # we need a .map here because we have multiple perceptions coming in
        byebug
        # @perception = @user.sessions.perceptions.create(perception_params)
        # render json: @perception
    end

    private

    def perception_params
        params.permit(:id, :note)
    end
end
