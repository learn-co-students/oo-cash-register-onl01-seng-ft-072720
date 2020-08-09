class CashRegister

  attr_accessor :total, :discount, :quantity, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @previous_total = @total
    @total += price * quantity
  end
  
  def apply_discount
    @total -= (@total * @discount.to_f / 100).to_i
      if @discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction  
    @total = @previous_total
  end
  
  
end 