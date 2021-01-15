require "byebug"

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent)
        # debugger
        @parent = parent
        self.children << parent
        # @children = node.first
    end

end