module Todos::Persistence::Memory

  class ListStore
    def initialize
      @storage = {}
    end

    def find(thing)
      @storage[thing]
    end

    def save(thing)
      @storage[thing] = thing
    end

    def delete(thing)
      @storage.delete(thing)
    end

    def update(thing, attributes)
      find(thing).update(attributes)
    end

    def all
      @storage.values
    end
  end

end