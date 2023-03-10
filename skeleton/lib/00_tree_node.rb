class PolyTreeNode

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value
  end

  def parent=(par)
    if parent != nil
      #remove self from parent
      parent.children.delete(self)
    end
    @parent = par
    #if par != nil
    #  par.children << self if !par.children.include?(self)
    #end
	  par.children << self if !par.children.include?(self) unless par == nil
  end

  def add_child(c_node)
	c_node.parent = self
  end

  def remove_child(c_node)
	raise "You're not my child!" unless children.include?(c_node)
	c_node.parent = nil 
  end

  def dfs(targ)
    return self if self.value == targ

	self.children.each do |child|
		stack = child
		search_result = stack.dfs(targ)
		#stack = child if search_result == targ
		return search_result if search_result != nil
	end

    return nil
  end

  def bfs(targ_value)
	return self if self.value == targ_value
	queue = [self]

	if 
		queue.each do |node|
			node.children.each 
		end
	
  end




  def inspect
    "Value: #{self.value} | Children: #{self.children}"
  end

end