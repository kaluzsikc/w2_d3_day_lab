require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../pub")
require_relative("../customer")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Alvaro", 10)
  end

  def test_has_name
    assert_equal("Alvaro", @customer1.name)
  end

  def test_has_wallet
    assert_equal(10, @customer1.wallet)
  end
end
