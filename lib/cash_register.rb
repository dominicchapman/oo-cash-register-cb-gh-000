
class CashRegister

  attr_accessor :last_transaction

  @@items = []

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
    @total += (price * quantity)

    quantity.times do
      @@items << title
    end

    self.last_transaction = (price * quantity)
  end

  # CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
  # CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
  # CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
  # CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
  def apply_discount
    discounted_total = (@total * ((100.0 - @employee_discount.to_f)/100)).to_i
    if discounted_total == @total
      "There is no discount to apply."
    else
      @total = discounted_total
      "After the discount, the total comes to $#{discounted_total.to_i}."
    end
  end

  # CashRegister #items returns an array containing all items that have been added
  def items
    @@items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
