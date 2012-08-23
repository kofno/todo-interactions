require 'test/unit'
require 'todos'
require 'todos/persistence/memory'

module Todos

  class TestCreateList < Test::Unit::TestCase

    def setup
      @list_store = Persistence::Memory::ListStore.new
    end

    def test_creating_a_list
      list = CreateList.new(@list_store).from_attributes(description: 'Walmart')

      assert_equal 'Walmart', list.description
    end

  end

end