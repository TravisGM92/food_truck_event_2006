require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'


class ItemTest < Minitest::Test
  def test_it_exists
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    assert_instance_of Item, item1
  end

  def test_it_has_a_name_and_price
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    assert_equal "Peach Pie (Slice)", item1.name
    assert_equal "Apple Pie (Slice)", item2.name
    # item2.price
    #=> 2.50

  end


end
