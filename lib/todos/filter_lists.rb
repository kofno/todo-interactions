module Todos

  class FilterLists

    def initialize(persistence)
      @persistence = persistence
    end

    # All lists, with no filters applied
    def all
      @persistence.all
    end
    
  end

end