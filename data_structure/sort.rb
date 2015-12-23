class Sort
	def self.bubble input
		puts 'input', input
		for j in 1..input.size
			for i in 1..input.size
				if input[i-1] > input[(i)]
					temp = input[i]
					input[i] = input[i+1]
					input[i+1] = temp
				end
			end
		end
		puts 'input', input
	end

	def self.insertion
	end

	def self.selection
	end

	def self.quick
	end

	def self.heap
	end

	def self.merge
	end
end

Sort.bubble [3,5,7,2,1]