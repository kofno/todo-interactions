require 'test/unit'
require 'todos'
require 'todos/persistence/memory'

class TestItemCRUD < Test::Unit::TestCase
  include Todos

  def setup
    @list_store = Persistence::Memory::ListStore.new
    @item_store = Persistence::Memory::ItemStore.new

    @list = CreateList.new(@list_store).from_attributes(description: 'Walmart')
    @item = CreateItem.new(@item_store).
      from_attributes(@list, description: 'Milk')
  end

  def test_creating_an_item
    assert_equal 'Milk', @item.description
    refute @item.done?, 'Item should NOT be done, by default'

    assert_equal @list, @item.list
  end

  def test_getting_an_item
    item = GetItem.new(@item_store).by_identity(@item)
    assert_equal @item, item
    assert_equal @list, item.list
  end

  def test_updating_an_item
    item = UpdateItem.new(@item_store).from_attributes(@item, description: 'Cheese')

    assert_equal @item, item
    assert_equal 'Cheese', item.description
  end

  def test_delete_an_item
    DeleteItem.new(@item_store).by_identity(@item)
    assert FilterItems.new(@item_store).all.empty?
  end

  def test_getting_items_for_a_list
    @a_second_list = CreateList.new(@list_store).from_attributes(description: 'Target')
    CreateItem.new(@item_store).from_attributes(@a_second_list, description: 'Shoes')
    list_items = FilterItems.new(@item_store).by_list(@a_second_list)

    assert_equal 1, list_items.size
    assert_equal 'Shoes', list_items.first.description
  end
end