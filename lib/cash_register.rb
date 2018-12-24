require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @@items << title
    @total += (price * quantity)
  end

  def apply_discount
    @total = self.total
    puts "After the discount, the total comes to #{@total}"
  end
end
