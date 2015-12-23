class Search
	def self.linear(input_collection, target)
		if !(input_collection.nil?  || input_collection.empty?)
			c = input_collection
			for i in 0...c.length
				return 'found' if c[i] == target
			end
		end
		return -1
	end

	def self.binary(input_collection, target)
		low = 0
		high = input_collection.length - 1
		mid = (low + high) / 2
		if target < input_collection[low] || target > input_collection[high]
			return 'target will not found in collection'
		end
		if target == input_collection[mid]
			return 'Target Found'
		elsif target >= input_collection[mid]
			binary input_collection[mid+1..high], target
		else 
			binary input_collection[low..mid-1], target
		end
	end
end

puts Time.now
foo = Search.linear [1,2,3,4,5], 4
puts 'foo' , foo
binary = Search.binary [1,2,3,4,5], 4

puts 'binary', binary