class NamesInput
	def initialize
		@names = []
		puts "Input names: "
		until "quit\n" == line = gets
		  @names << line.gsub("\n",'')
		end
		@names.sort!
		puts
		@names.each_with_index do |name, i|
			puts i%2 == 0 ? name : name.reverse
		end
	end
end

names = NamesInput.new