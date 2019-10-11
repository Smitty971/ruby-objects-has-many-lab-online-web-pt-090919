class Author
attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_name(name)
    post = Post.new(name)
  end

end
