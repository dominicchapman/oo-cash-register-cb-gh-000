
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
  # CashRegister #add_item also accepts an optional quantity
  # CashRegister #add_item doesn't forget about the previous total
  def add_item(title, price, quantity = 1)
    @title = title
    new_total = @total += (price * quantity)
  end

end
