class SessionsController < ApplicationController
    before_action :authorized, only: [:create]

    def index 
        @sessions = Session.all
        render json: @sessions
    end 

    def create
        @session = @user.sessions.create(session_params)
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
        # add .permit and attributes later
    end

end
