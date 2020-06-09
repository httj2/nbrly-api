class LeaderboardController < ApplicationController
    def index
        users = User.order(points: :desc);
        render json: {status: 'SUCCESS', message: 'loaded users', body:users},status: :ok
    end 
end
