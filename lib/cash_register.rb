require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_amount, :last_price

def initialize (discount = 0)
@total = 0
@discount = discount
@items = []
@prices = []
@last_amount = nil
@last_price = nil
end

def total
  @total
end

def add_item(name, price, amount = 1)
  @total = @total + (price * amount)
  amount.times do @items << name
  end
  amount.times do @prices << price
  end
  @last_amount = amount
  @last_price = price
end

def apply_discount
  if @discount > 0
  off = @total * (@discount.to_f/100.to_f)
  @total = (@total - off).to_i
  #binding.pry
  "After the discount, the total comes to $#{self.total}."
else
  "There is no discount to apply."
end
end

def void_last_transaction
@total = @total.to_f - (@last_amount.to_f * @last_price)
@total.to_i
@last_amount.times do @items.pop
end
end
end
