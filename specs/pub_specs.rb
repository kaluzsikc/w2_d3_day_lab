require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../pub")

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new("CodeDrinks", 500, [])
  end

  def test_has_a_name
    assert_equal("CodeDrinks", @pub.name)
  end
end
