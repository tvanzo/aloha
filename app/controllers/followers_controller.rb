class FollowersController < ApplicationController
    def create
        @user=current_user
        @user.following.push("#{params[:id]}")
        redirect_to request.referrer

    end
    
    def destroy
        @user=current_user
        @user.following.delete("#{params[:id]}")
        redirect_to request.referrer
    end
end
