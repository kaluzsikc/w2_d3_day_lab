class Drink
  attr_reader :name, :price, :alcohol_lvl

  def initialize(name, price, alcohol_lvl)
    @name = name
    @price = price
    @alcohol_lvl = alcohol_lvl
  end
end
