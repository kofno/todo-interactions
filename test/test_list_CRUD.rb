require 'test/unit'
require 'todos'
require 'todos/persistence/memory'

class TestListCRUD < Test::Unit::TestCase
  include Todos

  def setup
    @persistence = Persistence::Memory::ListStore.new
    @create_list= CreateList.new(@persistence)
    @list = @create_list.from_attributes(description: 'Walmart')
  end

  def test_getting_multiple_lists
    ['Target', 'Walmart', 'Home Depot'].each do |description|
      @create_list.from_attributes(description: description)
    end

    lists = FilterLists.new(@persistence).all
    assert_equal 4, lists.size
  end

  def test_delete_a_list
    DeleteList.new(@persistence).by_identity(@list)
    assert_nil GetList.new(@persistence).by_identity(@list)
  end

end