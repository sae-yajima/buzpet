class Pet < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :comments

    def self.search(search)
        if search != ""
          Pet.where('title LIKE(?)', "%#{search}%")
        else
          Pet.all
        end
      end

    validates :image,:title,:catch_copy, presence: true
end
