class PolyTreeNode
    attr_reader :parent, :children
    attr_writer :val

    def initialize(val)
        @val = val
        @parent = nil
        @children = []
    end
end