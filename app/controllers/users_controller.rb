class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @name = @user.name
        @pets = @user.pets
    end
   
end
