class Node
	attr_accessor :data, :next_

	def initialize(data, next_)
		@data = data
		@next = next_
	end
end

class LinkedList
	def initialize(val)
		@head = Node.new(val,nil)
	end

	def add(val)
		foo = Node.new(val, nil)
		current = @head
		while current.next_ != nil
			current = current.next_
		end
		current.next_ = foo
		self
	end

	def delete(val)
		if @head.data == val
			@head = @head.next
		else
			current = @head
			while (current.next_.data != val) && (current.next_ != nil) && (current != nil)	
				current = current.next_	
			end
			current.next_ = current.next_.next_ if ((current.next_ != nil) && (current != nil))
		end
	end

	def display
		current = @head
		full_list = []
		while current.next_ != nil
			full_list << current.data
			current = current.next_
		end
		full_list << current.data
		p 'full_list',full_list
	end
end

ll = LinkedList.new(5)

# Adding Elements to Linked List
ll.add(10)
ll.add(20)

# Display the Linked List
puts "Displaying Linked List:"
ll.display

puts "Delete 10 and then display the linked list:"
ll.delete(10)
ll.display

