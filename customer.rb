class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy_drink(drink_name, pub)
    # return "we don't have that drink" if drink is not on the pub
    # search for drink string
  end
end
