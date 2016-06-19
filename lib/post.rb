require './lib/author.rb'
require 'pry'
class Post

attr_accessor :post, :title, :author

def initialize(title) 
  @post = post
  @title = title
  @author = author
end

 def author_name
    if author == nil
      nil
    else
      author.name
    end
 end


end


# sophie = Author.new("Sophie")
# post = Post.new("My Blog Post!")

# post.author_name(sophie)
# #post.author = sophie
