class MassRand

	def initialize
		@massive = Array.new()
		
		10.times do
			@massive << Time.at(rand * Time.now.to_i).strftime("%d.%m") + " " + rand(-40..40).to_s
		end

		p @massive
	end

	def create_temp_hash
		temp_hash = Hash.new{|hash, key| hash[key] = Array.new}
		
		@massive.each do |elem|
			temp =  elem.partition(' ').last
			month = elem[3..4]
			temp_hash[month] << Integer(temp)
		end

		p temp_hash
		
		avg_temperature(temp_hash)
	end

	def avg_temperature(hash)
		Hash[hash.map { |k,v| [k, v.map.inject(:+) / v.size] }]
	end
end

arr = MassRand.new

p arr.create_temp_hash