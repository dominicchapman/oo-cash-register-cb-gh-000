
class CashRegister

  # CashRegister ::new sets an instance variable @total on initialization to zero
  # CashRegister ::new optionally takes an employee discount on initialization
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end

end
