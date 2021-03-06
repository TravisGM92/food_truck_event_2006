class FoodTruck

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if inventory[item].nil?
      0
    else
      inventory[item]
    end
  end

  def stock(item, quantity)
    if inventory[item].nil?
      inventory[item] = quantity
    else
      inventory[item] += quantity
    end
  end

  def potential_revenue
    @inventory.map do |item, quantity|
      item.price[1..-1].to_f * quantity.to_f
    end.sum
  end

  def sell(item, quantity)
    @inventory[item] -= quantity
  end

end
