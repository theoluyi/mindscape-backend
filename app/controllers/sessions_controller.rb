class SessionsController < ApplicationController
    before_action :authorized, only: [:create]

    def index 
        @sessions = Session.all
        render json: @sessions
    end 

    # can create perceptions mapping over here
    # might have a problem and need to exclude
    # method in ruby called except which non destructively removes a key from a hash
    # each is better than map here bc not creating an array, React kinda just happens to use map a ton
    
    # eventually: following perfect ruby conventions, moving code over to sessions model
    # create method that takes in user and parameters, 
    # @session.perceptions.create()
    def create
        # byebug
        @session = Session.create(sesh_params)

        # exclude sessions being created in session creator from this action
        # because they have no perceptions
        if perception_params[:perceptions] != []
            perception_params[:perceptions].each do |perception|
                # byebug
                @session.perceptions.create(note: perception)
            end 
        end 

        render json: @session
    end 

    # nts: incoming hashes are different

    private

    # id: null,
    # start_time: "",
    # end_time: null,
    # duration: 0,
    # landscape: null,
    # summary: "",
    # perceptions: []

    def sesh_params
        params.require(:session).permit(:user_id, :start_time, :end_time, :duration, :landscape, :summary)
    end 

    def perception_params
        params.permit(perceptions: [])
    end 

    def session_params
        params.permit(
            :id, 
            :start_time, 
            :end_time, 
            :duration, 
            :landscape, 
            :summary, 
            perceptions: []
        )
    end

end
