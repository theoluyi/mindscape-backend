class SessionsController < ApplicationController
    before_action :authorized, only: [:create]

    def index 
        @sessions = Session.all
        render json: @sessions
    end 

    def create
        @session = @user.sessions.create(session_params)
        # can create perceptions mapping over here
        # might have a problem and need to exclude
        # method in ruby called except which non destructively removes a key from a hash

        # each is better than map here bc not creating an array, React kinda just happens to use map a ton
        
        # eventually: following perfect ruby conventions, moving code over to sessions model
        # create method that takes in user and parameters, 
        # @session.perceptions.create()
        render json: @session
    end 

    private

    # id: null,
    # start_time: "",
    # end_time: null,
    # duration: 0,
    # landscape: null,
    # summary: "",
    # perceptions: []

    # purposefully omitting start_time right now because date is not properly formatted
    def session_params
        params.permit(:id, :start_time, :end_time, :duration, :landscape, :summary, :perceptions)
    end

end
