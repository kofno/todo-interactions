module Todos

  class FilterItems

    def initialize(persistence)
      @persistence = persistence
    end

    # No filter. Return all items.
    def all
      @persistence.all
    end

    def by_list(list)
      @persistence.items_for_list(list)
    end
  end

end