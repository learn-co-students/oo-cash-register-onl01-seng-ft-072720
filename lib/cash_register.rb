class CashRegister
  attr_accessor :total,:discount, :items, :prices, :last_tran 
  

  
  def initialize(discount = 0) 
    @discount = discount 
    @total = 0 
     @items = []
     @prices = []
     @last_tran = []
  end
 
 def add_item(title, price, quant = "1")
   q = quant.to_i 
   if @item == [] then @item = title
     @price = price 
   else 
     i = 0 
     while i < q 
   @items.push(title)
   @prices.push(price)
   i += 1 
 end 
 end 
   @total = @total + (price * q)
   @last_tran = [title, price, q]
 end
 
 def items
   @items 
 end
 
 def apply_discount
   a = "There is no discount to apply."
   if @discount == 0 then a 
 else
   c = @total
   cc = c.to_f 
   
   d = @discount
   dd = d.to_f 
   ddd = dd / 100 
   
   e = cc - (cc * ddd)
   f = e.to_i 
   @total = f 
   b = "After the discount, the total comes to $#{@total}."
 end
 end
     
 
 #def void_last_transaction
  #a = @items.pop
  #if @items == []
 #   b = 0 
  #  bb = @total * b 
  #  bbb = bb.to_f 
 #   @total = bbb 
 #  
 # else
#    c = @total
 #   d = @prices[-1]
 #   e = @total - d 
  #  @total = e 
#end
 #end 
 
 def void_last_transaction
   a = @total 
   b = last_tran[1]
   c = last_tran[2]
   d = b * c 
   @total = a - d 
 end
   
 
 
end