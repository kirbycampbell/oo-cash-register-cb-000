
class CashRegister
attr_accessor :total, :discount

# Makes .new happen / sets total to 0 / optionally sets discount
  def initialize(discount = 0.0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def self.apply_discount
    if discount = 0.0
      puts "There is no discount to apply."
    else
      total -= discount
      puts "After the discount, the total comes to #{total}."
    end
  end

end
