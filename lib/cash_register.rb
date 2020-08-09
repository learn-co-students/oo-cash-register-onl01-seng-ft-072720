require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(e_discount = 0)
    @total = 0
    @discount = e_discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    item = { title: title, price: price.to_f, quantity: quantity }
    @total += item[:price] * item[:quantity]
    @items << item
  end

  def apply_discount
    if @discount > 0
      discount = @total * (@discount.to_f / 100)
      @total -= discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    items = []
    @items.each do |item|
      item[:quantity].times do
        items << item[:title]
      end
    end
    return items
  end

  def void_last_transaction
    last_item = @items.pop 
    @total -= last_item[:price] * last_item[:quantity]
  end
end
