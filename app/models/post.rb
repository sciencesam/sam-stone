class Post < ApplicationRecord
    validates :title, presence: true, length: {maximum: 140}
    validates_presence_of :body
    validates_presence_of :abstract
    has_attached_file :image
    do_not_validate_attachment_file_type :image
end
