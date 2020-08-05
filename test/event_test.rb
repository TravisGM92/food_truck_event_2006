require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'
require './lib/event'


class FoodTruckTest <  Minitest::Test
  def test_it_exists
    event = Event.new("South Pearl Street Farmers Market")

    assert_instance_of Event, event
  end
end
