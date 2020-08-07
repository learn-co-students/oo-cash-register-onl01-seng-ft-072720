class CashRegister
  attr_accessor :discount, :items, :last_transaction_amount, :total 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity=1)
    @total += price * quantity 
    quantity.times do 
      @items << title 
    end 
    @last_item = price * quantity 
  end   
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction 
     @items.delete_at(-1)
    self.total = self.total - @last_item
  end 
 end

#didn't need an items method or a total method. tricky tricky