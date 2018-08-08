require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test
  def setup

    @drink1 = Drink.new("Beer", 3)
    @drink2 = Drink.new("Ale", 4)
    @drink3 = Drink.new("Wine", 5)
    @drink4 = Drink.new("Vodka", 6)

    drinks = [@drink1, @drink2, @drink3, @drink4]

    @pub = Pub.new("CodeDrinks", 500, drinks)
  end

  def test_has_a_name
    assert_equal("CodeDrinks", @pub.name)
  end

  def test_has_till
    assert_equal(500, @pub.till)
  end

  def test_has_drinks
    assert_equal(4, @pub.drinks.count)
  end

  def test_find_drink_by_name
    assert_equal(@drink1, @pub.find_drink("Beer"))
  end

  def test_drink_by_name__not_found
    assert_equal("We don't have that drink", @pub.find_drink("ygiy"))
  end

  def test_add_money
    @pub.add_money(50)
    assert_equal(550, @pub.till)
  end

  def test_remove_drink
    @pub.remove_drink(@drink1)
    assert_equal(3, @pub.drinks.count)
  end

  def test_sell_drink
    @pub.sell_drink(@drink1)
    assert_equal(503, @pub.till)
    assert_equal(3, @pub.drinks.count)
  end

end
