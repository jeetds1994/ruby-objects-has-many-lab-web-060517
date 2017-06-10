class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post_info = post
    post.author = self
    @@post_count += 1
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @@post_count += 1
    @posts << new_post
  end

  def self.post_count
    @@post_count
  end
end
