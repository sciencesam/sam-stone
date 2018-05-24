class Post < ApplicationRecord
    validates :title, presence: true, length: {maximum: 140}
    validates_presence_of :body
    validates_presence_of :abstract
end

#add_attachment :posts, :image

