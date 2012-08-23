require 'todos/values'

module Todos

  class CreateList

    def initialize(persistence)
      @persistence = persistence
    end

    def from_attributes(attributes)
      value = Values::List.new(attributes)
      @persistence.save(value)
      value
    end

  end

end