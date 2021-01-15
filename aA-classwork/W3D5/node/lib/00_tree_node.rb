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

    def add_child(child_node)
        # add child to children arr
        # need to reassign @parent
        if !self.children.include?(child_node) 
            child_node.parent = self
        end
    end

    def remove_child(child_node)
        if child_node.parent == nil
            raise "node is not a child"
        else
            child_node.parent = nil
        end
    end
end