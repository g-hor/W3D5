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

  def inspect
    "Value: #{self.value} | Children: #{self.children}"
  end

end