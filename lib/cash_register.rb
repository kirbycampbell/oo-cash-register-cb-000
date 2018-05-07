
class CashRegister
attr_accessor :total, :discount

# Makes .new happen / sets total to 0 / optionally sets discount
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if @discount != nil
      self.total = self.total - self.discount
      puts "After the discount, the total comes to #{self.total}."
    else
      puts "There is no discount to apply."
    end
  end

end
