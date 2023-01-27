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
    stack = self
    return stack if stack == targ

    if stack != targ
      children.each do |node|
        stack = node
        return dfs(targ)
      end
    end

    return nil
  end






  def inspect
    "Value: #{self.value} | Children: #{self.children}"
  end

end