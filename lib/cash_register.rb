class CashRegister #CREATE CLASS CashRegister

  attr_accessor :total, :discount, :items, :last_transaction #NEEDED TO DEFINE METHOD discount

  def initialize(discount = 0) #new optionally takes an employee discount on initialization
    @total = 0   #SETS AN INSTANCE VARIABLE @TOTAL ON INITIALIZATION TO ZERO
    @discount = discount  # CashRegister ::new optionally takes an employee discount on initialization
    @items = []  #returns an array containing all items that have been added
  end

  def add_item(title, price, quantity=1) #accepts a title and a price/  also accepts an optional quantity
    self.total += price * quantity  #needs this to = 15 if you buy 3 books, $5 per peice./  doesn't forget about the previous total
    quantity.times do    #returns an array containing all items that have been added
      items << title
    end
    self.last_transaction = price * quantity # subtracts the last item from the total
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i # applies the discount to the total price
      "After the discount, the total comes to $#{self.total}." # returns success message with updated total
    else
      "There is no discount to apply."  #returns a string error message that there is no discount to apply
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction # subtracts the last item from the total
  end

end
