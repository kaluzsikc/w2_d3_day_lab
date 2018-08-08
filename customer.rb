class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  # def buy_drink(drink, pub)
  #   # return "we don't have that drink" if drink is not on the pub
  #   # search for drink object
  #   drink = pub.find_drink(drink_name)
  #   # return drink if drink == drink.is_str
  #   @wallet -= drink.price
  # end


  def buy_drink(drink, pub)
    @wallet -= drink.price
    pub.sell_drink(drink)
  end


end
