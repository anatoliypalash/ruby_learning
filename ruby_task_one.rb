class MassFill
	def initialize
		@massive = Array.new(4) { Array.new(4) { rand(-10..10) } }
	end

	def sum
		display
		sum = 0
		@massive.each do |elem|
			elem.each do |num|
				if num < 0 
					sum += num
					p num
				end
			end
		end
		puts "Sum = #{sum}"
	end

	def display
		@massive.each{|m| puts m.map{|m1| m1.to_s.ljust(3)}.join(" ")}
		puts
	end
end

arr = MassFill.new

arr.sum