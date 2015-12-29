class SumNumbers
	def initialize
		
		count = 0
		sum = 5

		while count < 100  do		   
		   count +=1
		   sum += count
		   puts("Inside the loop i = #{count}" )
		end

		puts sum
	end
end

summa = SumNumbers.new

