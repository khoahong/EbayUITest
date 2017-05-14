class ProductItem
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def ==(other_item)
    @name == other_item.name && @price == other_item.price
  end
end
