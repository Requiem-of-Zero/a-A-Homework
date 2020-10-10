class Queue
    def initialize
        @store = []
    end

    def enqueue(el)
        store.unshift(el)
        self
    end

    def dequeue
        store.pop
    end

    def show
        store.dup #shows whole store without mutating the original store
    end

    def size
        store.length
    end

    def empty?
        store.empty?
    end

    private

    attr_reader :store
end