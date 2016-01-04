class ArrayInspect
	def initialize
		print "Input array lenght: "
		arr_len = gets.to_i
		@arr = Array.new(arr_len) { rand(0..100) }
		p @arr
		print "Input X: "
	    @x = gets.to_i
	    @sumInStack = 0
	    @stack = []
	    @hasher = Hash.new {|h,k| h[k]=[]}
	    @min = @arr.length
	   	populate_subset(@arr, 0, @arr.length-1)
	   	p @hasher

	   	puts "Minimum number of elements - #{@hasher.keys.sort.first}"
    	puts "Maximum number of elements - #{@hasher.keys.sort.last}"
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
end

arr = ArrayInspect.new