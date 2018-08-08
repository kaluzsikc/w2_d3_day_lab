require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class CustomerTest < MiniTest::Test

  def setup
    drink1 = Drink.new("Beer", 3)
    drink2 = Drink.new("Ale", 4)
    drink3 = Drink.new("Wine", 5)
    drink4 = Drink.new("Vodka", 6)

    drinks = [drink1, drink2, drink3, drink4]

    @customer1 = Customer.new("Alvaro", 10)
    @pub = Pub.new("CodeDrinks", 300, drinks)
  end

  def test_has_name
    assert_equal("Alvaro", @customer1.name)
  end

  def test_has_wallet
    assert_equal(10, @customer1.wallet)
  end

  def test_buy_drink
    @customer1.buy_drink("Beer", @pub)
    assert_equal(7, @customer1.wallet)
    assert_equal(3, @pub.drinks.count)
    assert_equal(303, @pub.till)
  end
end
