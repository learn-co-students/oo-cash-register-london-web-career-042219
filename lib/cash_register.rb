require 'pry'

class CashRegister
  
attr_accessor :discount, :total, :all_items
  
  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @all_items = []
  end
    
  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    @title = title
    @price = price
    i = 0
    while i < quantity
    @all_items << title
    i += 1 
    end
  end
  
  def apply_discount
    @discount_percent = 100 - @discount
    #binding.pry
    @total = (@total *=@discount_percent)/100
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    self.all_items
  end
  
  def void_last_transaction
    @total -= @price
  end
end

puts "K"