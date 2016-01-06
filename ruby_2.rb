class TechnicalQuestion
	def task1(max = 100)
		(1..max).inject(:+) 
	end

	def task2(str = "Fizz::Buzz::Wizz")
		arr = str.split('::')
		result = []
		arr.length.downto(1) do |el|
			result << arr.first(el).join('::')
		end
		p result
	end

	def task4(array, x)
		result, sum = [], 0
		array.sort.reverse.each do |el|
			sum += el
			result << el
			return result.size, result.join("+") if sum >= x
		end
		return "Wrong Array!"
	end

	def task5(array, x)
		array.sort!
		return "Wrong Array!" if array.first > x
		result, sum = [], 0
		array.each do |el|
			sum += el
			return result.size, result.join("+") if sum > x
			result << el
		end
	end
end

