class Pub

attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks
  end

  def find_drink(drink_name)

    for drink in @drinks
      if drink.name == drink_name
        return drink
      else
        return "We don't have that drink"
      end
    end
  end

  def add_money(amount)
    @till += amount
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

  def sell_drink(drink, customer)
    return if check_age(customer) == false
    add_money(drink.price)
    remove_drink(drink)
  end

  def check_age(customer)
    return false if customer.age < 18
    true
  end

end
