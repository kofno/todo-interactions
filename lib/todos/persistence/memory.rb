module Todos::Persistence
  module Memory
    autoload :ListStore, 'todos/persistence/memory/list_store'
    autoload :ItemStore, 'todos/persistence/memory/item_store'
  end
end