module Todos

  class GetItem

    def initialize(persistence)
      @persistence = persistence
    end

    def by_identity(thing)
      @persistence[thing]
    end
  end

end