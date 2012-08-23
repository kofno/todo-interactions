module Todos
  class GetList

    def initialize(persistence)
      @persistence = persistence
    end

    def by_identity(list)
      @persistence.find(list)
    end
  end
end