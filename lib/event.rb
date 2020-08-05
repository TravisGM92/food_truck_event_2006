class Event

  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.inventory.keys.include?(item)
    end
  end

  def sorted_item_list
    @food_trucks.flat_map do |truck|
      truck.inventory.keys.map do |item|
        item.name
      end
    end.uniq.sort
  end

  def total_inventory
    market_inventory = Hash.new
    @food_trucks.each do |truck|
      truck.inventory.each do |item, amount|
        if market_inventory[item].nil?
          market_inventory[item] = Hash.new(0)
          market_inventory[item][:quantity] += amount
          market_inventory[item][:food_trucks] = food_trucks_that_sell(item)
        else
          market_inventory[item][:quantity] += amount
        end
      end
    end
    market_inventory
  end
end
