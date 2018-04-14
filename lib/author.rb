class Author
	attr_accessor :name, :posts

	@@post_count = 0

	def initialize(name)
		@name = name
		@posts = []
	end

	def add_post(post)
		post.author = self
		@posts << post
		@@post_count += 1
	end

	def add_post_by_title(title)
		new_post = Post.new(title)
		add_post(new_post)
	end

	def self.post_count
		all_posts = ObjectSpace.each_object(Post)
		all_posts.count
	end
end