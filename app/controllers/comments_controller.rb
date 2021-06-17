class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to pet_path(@comment.pet) 
    else
      @pet = @comment.pet
      @comments = @pet.comments
      render "pets/show" 
     end
    end

    private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, pet_id: params[:pet_id])
  end
end
