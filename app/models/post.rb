class Post < ActiveRecord::Base
  has_many :comments #allows a post object to have many comments related to it and provides methods taht enable me to retrieve the comments that belong to a certain post
end
