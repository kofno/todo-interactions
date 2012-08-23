module Todos

  class UpdateList

    def initialize(list, persistence)
      @list = list
      @persistence = persistence
    end

    def from_attributes(attributes)
      @persistence.update(@list, attributes)
      Values::List.new(attributes)
    end
  end

end