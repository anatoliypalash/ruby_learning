class Item

	@@discount = 0.1

	def self.discount
		Time.now.month == 4 ? @@discount + 0.2 : @@discount
	end

	def initialize(options={})
		@price = options[:price]
		@weight = options[:weight]
		@name = options[:name]
	end

	attr_reader :price, :name
	attr_writer :price

	def info
		yield(price)
		yield(name)
	end

	def price
		@price - @price*self.class.discount
		
	end

end