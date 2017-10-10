
class CashRegister

  # CashRegister ::new sets an instance variable @total on initialization to zero
  # CashRegister ::new optionally takes an employee discount on initialization
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end

  # CashRegister #total returns the current total
  def total
    @total
  end

  # CashRegister #add_item accepts a title and a price and increases the total
  def add_item(title, price)
    @title = title
    @total += price
  end

end
