class MassFill
	def initialize
		@massive = Array.new(4) { Array.new(4) { rand(-10..10) } }
	end

	def sum
		count = 0
		@massive.each do |elem|
			elem.each do |num|
				if num < 0 
					count += num
					puts num
				end
			end
		end
		puts "Sum = #{count}"
	end
end

arr = MassFill.new

arr.sum