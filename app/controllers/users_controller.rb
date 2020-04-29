class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def index 
        @users = User.all
        render json: @users, include: '**'
    end 

    def show
        @user = User.find(params[:id])
        render json: @user, include: '**'
    end

    def create 
        # do validations get run in the User.create step?
        # why isn't case sensitivity false working?
        @user = User.create(user_params)
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
        else 
            render json: { error: "Nice try bub, you failed to create a new user." }, status: 401
        end 
    end

    def login
        @user = User.find_by(username: params[:username])
    
        if @user && @user.authenticate(params[:password])
          wristband = encode_token({user_id: @user.id})
          render json: { user: UserSerializer.new(@user), token: wristband }
        else 
          render json: {error: "Nice job dbag"}, status: 401
        end
    end

    def persist
        wristband = encode_token({user_id: @user.id})
        render json: { user: UserSerializer.new(@user), token: wristband}
    end 

    private 

    def user_params
        params.permit(:username, :password)
    end 
end
