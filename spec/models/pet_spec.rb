require 'rails_helper'

RSpec.describe Pet, type: :model do
    before do
      @pet = FactoryBot.build(:pet)
    end

  describe 'ユーザー新規投稿' do
    context '新規投稿できるとき' do
      it '全ての値が正しければ投稿できる' do
        expect(@pet).to be_valid
      end
    end

  context '新規投稿できない時'do
    it 'titleが空だと出品できない'do
     @pet.title = ''
     @pet.valid?
     expect(@pet.errors.full_messages).to include("Title can't be blank")
    end
    it 'catch_copyが空だと出品できない'do
     @pet.catch_copy = ''
     @pet.valid?
     expect(@pet.errors.full_messages).to include("Catch copy can't be blank")
    end
      it 'imageが空だと出品できない'do
       @pet.image = nil
       @pet.valid?
       expect(@pet.errors.full_messages).to include("Image can't be blank")
      end
   end
  end
end