class Stack
	attr_accessor :top, :size, :store
	def initialize(size)
		@store = Array.new(size)
		@top = -1
		@size = size
	end


	def pop
		if empty? 
			'empty' 
		else
			foo = store[top]
			store[top] = nil
			self.top = top.pred
			foo
		end
	end

	def push(element)
		if full?
			'full' 
		else
			self.top=(top.succ)
		 	store[top] = element
		 	store
		end
	end

	private
		def full?
			top == size - 1
		end

		def empty?
			top == -1
		end
end

s = Stack.new 3

puts s.inspect
foo = s.pop
puts foo.nil?
s.push 6
puts s.inspect
s.push 7
puts s.inspect
puts s.push 8
puts s.inspect
puts s.push 9
puts s.inspect
	s.pop
	s.pop
puts s.pop
puts s.pop
