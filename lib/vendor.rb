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
end
