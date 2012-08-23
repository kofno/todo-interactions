module Todos
  autoload :CreateList,  'todos/create_list'
  autoload :GetList,     'todos/get_list'
  autoload :UpdateList,  'todos/update_list'
  autoload :DeleteList,  'todos/delete_list'
  autoload :FilterLists, 'todos/filter_lists'

  autoload :CreateItem,  'todos/create_item'
  autoload :GetItem,     'todos/get_item'
  autoload :UpdateItem,  'todos/update_item'
  autoload :DeleteItem,  'todos/delete_item'
  autoload :FilterItems, 'todos/filter_items'
end