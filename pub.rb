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
        return drink.name
      else
        return "We don't have that drink"
      end
    end
  end


end
