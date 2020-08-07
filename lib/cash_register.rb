require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price 
  attr_reader :items 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    quantity.times do 
      @items.push(item)
  end 
      @last_total = @total 
      @total += price * quantity
  end 
  
  def apply_discount()
      @total -= @total * (@discount) / 100
      if @total == 0 
      "There is no discount to apply."
    else 
      "After the discount, the total comes to $#{@total}."
      end 
    end
    
  def void_last_transaction
    @total = @last_total
  end 
      
    
    
  
  
end 
