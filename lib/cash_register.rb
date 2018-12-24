require 'pry'

class CashRegister
  attr_accessor :total
  @@items = []

  def initialize(total = 0)
    @total = total
  end

  def discount
    self.total = 20
  end

  def add_item(title, price, quantity = 1)
    @@items << title
    @total += (price * quantity)
  end

  def apply_discount
    @total = total * 0.8
  end
end
