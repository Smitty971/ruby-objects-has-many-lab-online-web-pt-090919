class Author
attr_accessor :name, :post
@@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    self.post.count
  end

end
