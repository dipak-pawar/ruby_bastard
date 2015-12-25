class Queue
	attr_accessor :head, :tail, :size, :store

	def initialize(size)
		@size = size
		@head = -1
		@tail = 0
		@store = Array.new 3
	end

	def enqueue(element)
		if full? 
			'full'
		else
			self.tail = tail.pred
			store[tail] = element
			self
		end
	end

	def dequeue
		if empty? 
			'empty'
		else
			puts 'succ', tail, tail.nil?
			self.tail=(tail.succ)
			poped = store[head]
			store.unshift nil
			store.pop
			poped
		end
	end

	private
	def empty?
		head == -1 && tail == 0
	end

	def full?
		p tail, size
		tail.abs == size
	end
end

q = Queue.new 2
puts 'empty', q.dequeue
puts q.enqueue 40
puts q.enqueue 50
puts q.enqueue 60
p q.inspect
puts q.enqueue 70

