class TreeNode
	attr_accessor :left, :right, :val

	def initialize(val, left, right)
		@val = val;
		@left = left;
		@right = right;
	end
end

class BST
	#attr_accessor :root
	def initialize(val)
		@root = TreeNode.new(val, nil, nil)
	end

	def insert(val)
		current = @root
		t = TreeNode.new(val, nil, nil)
		while current
			if val < current.val && current.left.nil?
				current.left = t
			elsif val > current.val && current.right.nil?
				current.right = t
			elsif val < current.val
				current = current.left
			elsif val > current.val
				current = current.right
			else
				return
			end
		end
	end

	def pre_order(node=@root)
		return if node.nil?
		puts node.val.to_s
		pre_order(node.left)
		pre_order(node.right)
	end

	def in_order(node=@root)
		return if node.nil?
		in_order(node.left)
		puts node.val.to_s
		in_order(node.right)
	end

	def post_order(node=@root)
		return if node.nil?
		post_order(node.left)
		post_order(node.right)
		puts node.val.to_s
	end
end



bst = BST.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)

bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.in_order
puts "Pre-Order Traversal:"
bst.pre_order
puts "Post-Order Traversal:"
bst.post_order
