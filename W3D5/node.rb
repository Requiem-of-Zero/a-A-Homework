class Node
    attr_reader :val, :children

    def initialize(val, children=[])
        @val = val
        @children = children
    end

    def inspect
        "<Node val: #{val} children: #{children}>"
    end

    def bfs(target_value)
        #create queue with starting node in it
        queue = [self]
        #until queue is empty
            #dequeue the first node
            #if it is the target, return it
            #otherwise, add all of its children to the queue
            until queue.empty?
                cur_node = queue.shift
                return cur_node if cur_node == target_value
                queue += cur_node.children
            end
        #return nil
        return nil
    end

    

end

d = Node.new('d')
e = Node.new('e')
b = Node.new('b', [d, e])