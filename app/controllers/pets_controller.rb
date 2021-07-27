class PetsController < ApplicationController
   before_action :authenticate_user!,except: [:index,:show]
   before_action :set_pet, only: [:edit, :show]
   before_action :move_to_index, except: [:index, :show , :search]

    def index

      query = "SELECT * FROM pets"
      @pets = Pet.find_by_sql(query)
      @pets = Pet.includes(:user).order("created_at DESC")
    end
    def new
      @pet = Pet.new
      if @pet.save
        redirect_to root_path
      end
    end

    def create
      @pet = Pet.new(pet_params)
      if @pet.save
        redirect_to root_path
      else 
        render:new
      end
     end

     def destroy
      pet = Pet.find(params[:id])
      pet.destroy
      redirect_to root_path
    end

   def edit
    @pet = Pet.find(params[:id])
    unless @pet.user_id == current_user.id
      redirect_to root_path
    end
   end

   def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
     if @pet.save
      redirect_to pet_path(params[:id])
    else
      
      render:edit
     end
   end

   def show
      @comment = Comment.new
      @comments = @pet.comments.includes(:user)
   end

   def search
    @pets = Pet.search(params[:keyword])
   end


    private
 def pet_params
   params.require(:pet).permit(:title,:image,:catch_copy).merge(user_id: current_user.id )
 end
 def set_pet
  @pet = Pet.find(params[:id])
end

 def move_to_index
  unless user_signed_in?
   redirect_to action: :index
  end
 end
end
