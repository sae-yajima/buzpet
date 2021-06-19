class Pet < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :comments


    validates :image,:title,:catch_copy, presence: true
end
