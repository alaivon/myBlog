class Post < ApplicationRecord
	validates_length_of :title, :minimum => 5
	validates :content, presence: true
	validates :post_date, presence: {message: "have to be selected before you save!"}
end
