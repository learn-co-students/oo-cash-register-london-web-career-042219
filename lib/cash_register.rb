require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += (price*quantity)
        @items.fill(title, @items.length, quantity)
        @last_item = price*quantity
    end

    def apply_discount
        @total *= (1.0-(self.discount/100.0))
        self.discount > 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
    end

    def items
        return @items
    end
    
    def void_last_transaction
        @total -= @last_item
    end
end