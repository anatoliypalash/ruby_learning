class MassFill
	def initialize
		@massive = Array.new(4) { Array.new(4) { rand(-10..10) } }
	end

	def sum
		@massive.each do |elem|
			elem.each do |num|
				if num < 0 
					puts num
				end
			end
		end
	end
end

arr = MassFill.new

p arr

arr.sum