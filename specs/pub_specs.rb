require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../pub")
require_relative("../drink")

class PubTest < MiniTest::Test
  def setup

    drink1 = Drink.new("Beer", 3)
    drink2 = Drink.new("Ale", 4)
    drink3 = Drink.new("Wine", 5)
    drink4 = Drink.new("Vodka", 6)

    drinks = [drink1, drink2, drink3, drink4]

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
end
