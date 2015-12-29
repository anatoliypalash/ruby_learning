class ArrayInspect
	def initialize
		@arr = [1, 4, 45, 6, 10, 8]
		print "Input X: "
    @x = gets.to_i
    @sumInStack = 0
    @stack = []
    @hasher = []
    @min = @arr.length
   # find_pairs
   	populate_subset(@arr, 0, @arr.length-1)
	end

	def populate_subset(data, fromIndex, endIndex)
		if @sumInStack == @x
			p @stack
			
			if @stack.length < @min
				p @min = @stack.length	
				puts
				@hasher[@min] = @stack
			end
		end

		for i in fromIndex..endIndex
			if @sumInStack + data[i] <= @x
				@stack << data[i]
				@sumInStack += data[i]

				populate_subset(data, i+1, endIndex)
				@sumInStack -= @stack.pop
			# elsif @sumInStack == @x && @stack.length < @min
			# 	 puts "Count of elements: #{@stack.length}"
			# 	 @min = @stack.length
			end
		end

	end

	# def find_pairs
	# 	binMap = {}
	# 	length = @arr.length
	# 	binMap['max'] = 0
	# 	for i in 0..length-1
	# 		temp = @x - @arr[i]
			
	# 			print("Pair with given sum #{@x} is (#{@arr[i]}, #{temp}) \n") if (temp >= 0 && binMap[temp] == 1) 
			
 #       binMap[@arr[i]] = 1;
	# 	end
	# 	puts binMap
	# end

end

arr = ArrayInspect.new

# p @stack

 p @hasher