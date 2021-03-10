class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory.reduce(0) do |acc, item|
      acc += item[1]
    end
  end

  def stock(item, amount)
    @inventory[item] = 0 if @inventory[item].nil?
    @inventory[item] += amount
  end

  def potential_revenue
    items = @inventory.keys
    summed_items = items.sum do |item|
      item.price
    end
    amounts = @inventory.values
    amounts.each do |amount|
      
    end
  end
end
