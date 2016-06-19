require 'pry'
class Author

  attr_accessor :name, :posts, :author
  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @@all << self#.posts
    @posts = []
    @author = author
  end

  def self.all
    @@all
  end

  def self.post_count
    @@all.each do |author|
      if author.posts != []
        @@post_count += 1
      end
    end
    @@post_count.to_i
  end

  def add_post(post)
    @posts << post
    post.author = self
    #binding.pry
  end

  def add_post_by_title(post)
    #need to associate the name betty with the posts  
    betty = Post.new(post)
    @posts << betty
    self.posts.last.author = self
    self.posts.last.title = post

    #binding.pry
  end


end

