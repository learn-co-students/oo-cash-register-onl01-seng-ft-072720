class  CashRegister

  attr_accessor :total, :discount, :items, :last_trans

  def initialize(f = nil)
    @discount = f
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    if quantity ==  1
    @total += price
  else
    @total += (price*quantity)
  end
  quantity.times do
    @items << item
    end
    @last_trans = price * quantity
  end

  def apply_discount
    if @discount != nil
    new_disc = @discount.to_f / 100
    new_total = @total - @total*new_disc
    @total = new_total
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_trans
  end
end
