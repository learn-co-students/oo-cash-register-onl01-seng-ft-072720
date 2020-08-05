require "pry"
class CashRegister
    attr_accessor :total, :discount, :all_items, :last_transaction_item, :last_transaction_price

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @all_items =  []
    end

    def add_item(item, price, quantity = nil)
        if quantity != nil
        @total += price * quantity
        quantity.times { @all_items << item }
        @last_transaction_item = [item] * quantity
        @last_transaction_price = price * quantity
        else
        @total += price
        @all_items << item
        @last_transaction_item = item
        @last_transaction_price = price
        end
    end

    def apply_discount
        if @discount == nil
            "There is no discount to apply."
        else
        @total -= @total * (discount.to_f / 100)
        "After the discount, the total comes to $#{@total.to_i}."
        end
    end
    
    def items
        @all_items
    end

    def void_last_transaction
        @all_items.delete(@last_transaction_item)
        @total -= @last_transaction_price
    end

end