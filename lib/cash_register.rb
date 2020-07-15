class CashRegister

  attr_accessor :total, :discount, :items, :title, :last_transaction_amount

def initialize(discount = nil)
  @total = 0.00
  @discount = discount
  @items = []
end

def employee_discount
  self.discount
end

def add_item(title, price, quantity = 1)
  self.total += price * quantity
  quantity.times do
    @items << title
end
@last_transaction_amount = self.total
end


def apply_discount
  if employee_discount
    @total
  @total= @total * @discount / 100 * 4
  return "After the discount, the total comes to $#{@total.to_i}."
else
  return "There is no discount to apply."
end
end

def void_last_transaction()
   @total -= @last_transaction_amount
end


end
