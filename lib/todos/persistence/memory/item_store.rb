module Todos::Persistence::Memory

  class ItemStore

    def initialize
      @storage = {}
    end

    def find(thing)
      @storage[thing]
    end
    alias_method :[], :find

    def save(thing)
      @storage[thing] = thing
    end

    def delete(thing)
      @storage.delete(thing)
    end

    def all
      @storage.values
    end

    def items_for_list(list)
      all.select { |item| item.list == list }
    end

  end

end