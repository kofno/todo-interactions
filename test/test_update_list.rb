require 'test/unit'
require 'todos'
require 'todos/persistence/memory'

module Todos

  class TestUpdateList < Test::Unit::TestCase

    def setup
      @list_store = Todos::Persistence::Memory::ListStore.new
    end

    def test_update_list
      created_list = CreateList.new(@list_store).from_attributes(description: 'Walmart')
      updated_list = UpdateList.new(created_list, @list_store).from_attributes(description: 'Target')

      assert_equal 'Target', updated_list.description
    end

  end

end