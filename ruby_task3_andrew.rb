 p 'Give me array size: '
arr_len = gets.to_i
@arr = Array.new(arr_len) { rand(100) }
p @arr.inspect
p 'give me number: '
@X = gets.to_i
@elements = []

def count_numbers(max = false, arr = @arr, number = @X)
	sum = 0
	arr.sort! 
	arr.reverse! if max
	i = 0
	while sum < number do
		sum	+= arr[i]
		@elements << arr[i]
		i +=1
	end
	return i
end

count_numbers()
p "#{@elements.size} => #{@elements.inspect}"
@elements = []
count_numbers(true)
p "#{@elements.size} => #{@elements.inspect}"