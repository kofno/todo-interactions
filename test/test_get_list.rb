require 'test/unit'
require 'todos'
require 'todos/persistence/memory'

module Todos

  class TestGetList < Test::Unit::TestCase

    def setup
      @list_store = Persistence::Memory::ListStore.new
    end

    def test_get_list
      created_list = CreateList.new(@list_store).from_attributes(description: 'Walmart')
      fetched_list = GetList.new(@list_store).by_identity(created_list)

      assert_equal created_list, fetched_list
    end

  end

end