class NamesInput
	def initialize
		@names = ["Tolik"]
		puts "Input names: "
		until "quit\n" == line = gets
		  @names << line.gsub("\n",'')
		end
		@names.sort_by!{ |m| m }
		puts
		i = 1
		@names.each do |name|
			if i%2 == 0
				puts name.reverse!
			else
				puts name
			end 
			i += 1
		end
	end
end

names = NamesInput.new