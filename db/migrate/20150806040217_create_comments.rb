class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, index: true

      t.timestamps 
    end
    add_foreign_key :comments, :posts
  end
end


=begin

comments can't exist on their own, and only exist in the context of a post i.e. "a comment belong to a post" and "a post has many comments"
each POST will have a unique id as will each COMMENT, and we need to provide the POST id to the COMMENT -> this is done with the foreign key

Foreign Key
  -is the ID of one model, used as an attribute in another model in order to look up the relationship

  This means
    -The Comment model need to have an attribute named post_id
        -which is there so Comment can belong to a POST(specified by post_id)
        -also allows many comments to belong to one post



When I ran $ rails g model Comment body:text post:references
  -The foreign key naming convention of post_id was enfored with "post:references"

=end