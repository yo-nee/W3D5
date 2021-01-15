require "byebug"

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
   
        if self.parent
            old_parent = self.parent
            old_parent.children.delete(self)
        end

        @parent = new_parent
        @parent.children << self unless new_parent == nil
        
    end

end