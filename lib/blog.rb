class Blog
	attr_accessor 
	def initialize
		@current_page = 1
		@posts_per_page = 3
		@post_container = []
	end

	def add_post(post)
		@post_container.push(post)
	end

	def array_printer(array)
	first_post = (@current_page -1) * @posts_per_page
	last_post = (first_post - 1) + 3
	array[first_post..last_post].each do | post |
		puts "#{post.title} \n************* \n#{post.text} \n-------------- \n "
		end
	end

	def sort_posts_by_date
		@post_container.sort { | p1, p2 | p2.date <=> p1.date }
	end

	def publish_front_page
		puts "\nHere is the front page!\n "
		sort_posts_by_date
		array_printer(sort_posts_by_date)
	end

	def next_page
		@current_page += 1
	end

	def previous_page
		@current_page -= 1
	end

end
