class MassRand

	def initialize
		@massive = Array.new()
		
		40.times do
			@massive << Time.at(rand * Time.now.to_i).strftime("%d.%m") + " " + rand(-40..40).to_s
		end

		puts @massive
	end

	def create_temp_hash
		temp_hash = {}
		
		@massive.each do |elem|
			month, temp = elem.split
			#temp =  elem.partition(' ').last
			#month = elem[3..4]
			month = month.split('.').last
			if temp_hash.has_key?(month)
				temp_hash[month] << temp.to_f
			else
				temp_hash[month] = [temp.to_f]
			end
		end

		p temp_hash
		
		avg_temperature(temp_hash)
	end

	def avg_temperature(hash)
		Hash[hash.map { |k,v| [k, v.inject(:+) / v.size] }]
	end
end

arr = MassRand.new

puts "Temp  by month #{arr.create_temp_hash}"