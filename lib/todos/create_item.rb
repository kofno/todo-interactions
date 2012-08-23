require 'todos/values'

module Todos

  class CreateItem
    def initialize(persistence)
      @persistence = persistence
    end

    def from_attributes(list, attributes)
      attributes = attributes.merge(list: list)
      item = Values::Item.new(attributes)
      @persistence.save(item)
      item
    end
  end
  
end 