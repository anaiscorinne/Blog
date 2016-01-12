require_relative("lib/blog.rb")
require_relative("lib/post.rb")
require_relative("lib/sponsored_post.rb")


blog = Blog.new
blog.add_post Post.new("Post 1", 20160101, "Post 1 text")
blog.add_post Post.new("Post 2", 20160102, "Post 2 text")
blog.add_post Post.new("Post 3", 20160103, "Post 3 text")
blog.add_post SponsoredPost.new("Post 4", 20160104, "Post 4 text")
blog.add_post SponsoredPost.new("Post 5", 20160105, "Post 5 text")
blog.add_post SponsoredPost.new("Post 6", 20160106, "Post 6 text")

blog.publish_front_page
blog.next_page
blog.publish_front_page
blog.previous_page
blog.publish_front_page
