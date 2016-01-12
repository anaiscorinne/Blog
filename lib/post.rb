class Post
	attr_reader :title, :date, :text
	def initialize(title, date, text)
		@date = date
		@title = title
		@text = text
	end

	def print_post
		puts "#{@title} \n************* \n#{@text} \n-------------- \n "
	end
end