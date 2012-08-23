module Todos

  class DeleteList

    def initialize(persistence)
      @persistence = persistence
    end

    def by_identity(thing)
      @persistence.delete(thing)
    end
  end

end