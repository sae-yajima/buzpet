require 'rails_helper'

RSpec.describe Comment, type: :model do

     before do
      @comment = FactoryBot.build(:comment) 
     end
    
  describe 'ユーザーコメント' do
    context '投稿にコメントできるとき' do
      it 'commentが存在していれば保存できること' do
       expect(@comment).to be_valid
      end

    context '投稿にコメントできないとき' do
      it 'commentが空では保存できないこと' do
       @comment.text = ''
       @comment.valid?
       expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      it 'petが紐付いていないと保存できないこと' do
        @comment.pet= nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Pet must exist')
       end
       
       it 'userが紐付いていないと保存できないこと' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('User must exist')
       end
    end
   end
  end
end









   