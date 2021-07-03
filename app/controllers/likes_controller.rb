class LikesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_like, only: [:create, :destroy]

    def create
        user = current_user
        like = Like.create(user_id: user.id, pet_id: pet.id)
    end
    def destroy
        user = current_user
        like = Like.find_by(user_id: user.id, pet_id: pet.id)
        like.delete
    end

    private
    def set_like
        @pet = Pet.find(params[:pet_id])
    end
end
