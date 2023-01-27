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
    @parent = par
    #if par != nil
    #  par.children << self if !par.children.include?(self)
    #end
	par.children << self if !par.children.include?(self) unless par == nil
  end

end