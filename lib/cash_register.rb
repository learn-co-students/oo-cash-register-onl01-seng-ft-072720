require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_item 
  def initialize(discount = 0)
    @discount = discount 
    @total = 0
    @@all = []
  end 
  
  def add_item(item, price, quantity = 1)
    price = price * quantity
    @total = @total + price 
    @last_item = price * quantity 
    quantity.times{@@all.push(item)}
    @total 
  end
  
  def apply_discount
  
  if @discount == 0 
   "There is no discount to apply."
  else 
    dis = @total * 0.20
    @total = @total - dis
    @total = @total.to_i 
    "After the discount, the total comes to $#{@total}."
  end 
end
  
  def items 
    @@all 
  end

  def void_last_transaction 
  @total = @total - @last_item
  if @total < 0 
    @total = 0.0
  else
    @total
  end
end
    
end


