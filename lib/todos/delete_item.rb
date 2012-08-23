module Todos

  class DeleteItem

    def initialize(persistence)
      @persistence = persistence
    end

    def by_identity(item)
      @persistence.delete(item)
    end
  end

end