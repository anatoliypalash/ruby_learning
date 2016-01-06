class StringDelimit
	def initialize
		str = "foo::fighters::rule::the::world::of::rocknRoll"
		arr = Array.new
		while str != "" do 
			arr << str
			str = str.rpartition('::').first
		end
		p arr
	end
end

line = StringDelimit.new