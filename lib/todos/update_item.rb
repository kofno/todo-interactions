module Todos

  class UpdateItem

    def initialize(persistence)
      @persistence = persistence
    end

    def from_attributes(item, attributes)
      item = GetItem.new(@persistence).by_identity(item)
      item.update(attributes)
      @persistence.save(item)
      item
    end
  end
end