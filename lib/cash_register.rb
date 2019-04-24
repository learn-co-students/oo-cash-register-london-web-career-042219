class CashRegister

  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = [ "", 0, 0 ]
  end

  def add_item(title, price, qty=1)
    @last_transaction = [ title, price, qty ]
    @total += price * qty
    @items += Array.new(qty, title)
  end

  def apply_discount
    if @discount != 0
      @total -= (@total * (@discount / 100.0)).round(2)
      return "After the discount, the total comes to $#{@total.round(0)}."
    end
    return "There is no discount to apply."
  end

  def void_last_transaction
    @total -= @last_transaction[1] * @last_transaction[2]
  end

end
