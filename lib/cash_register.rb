require 'pry'


class CashRegister
attr_accessor :total, :items, :discount, :last_transaction


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
  @last_transaction = []
end

def add_item(title, price, quantity = 1)
  self.items.concat([title] * quantity)
  self.total = self.total.to_f + price * quantity
  self.last_transaction[0] = title
  self.last_transaction[1] = price
  self.last_transaction[2] = quantity
end

def apply_discount

  if self.discount == 0
    "There is no discount to apply."
  else
    discount = self.total * self.discount.to_f * 0.01
    self.total = self.total - discount
    "After the discount, the total comes to $#{self.total.to_i}."
  end
end

def void_last_transaction
  self.total = self.total - self.last_transaction[1] * self.last_transaction[2]
end


end
