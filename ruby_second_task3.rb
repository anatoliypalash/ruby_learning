class ArrayInspect
	def initialize
		@arr = [1, 4, 45, 6, 10, 8]
		print "Input X: "
    @x = gets.to_i
    @sumInStack = 0
    @stack = []
    @hasher = Hash.new {|h,k| h[k]=[]}
    @min = @arr.length
   # find_pairs
   	populate_subset(@arr, 0, @arr.length-1)

   	p @hasher
	end

	def populate_subset(data, fromIndex, endIndex)
		if @sumInStack == @x
			#p @stack					
			if @stack.length < @min
				@min = @stack.length	
				@stack.each do |word|
	    		@hasher[@stack.length] += [word]
				end
			end
		end

		for i in fromIndex..endIndex
			if @sumInStack + data[i] <= @x
				@stack << data[i]
				@sumInStack += data[i]
				populate_subset(data, i+1, endIndex)
				@sumInStack -= @stack.pop
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