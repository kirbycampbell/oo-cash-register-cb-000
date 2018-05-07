
class CashRegister
attr_accessor :total, :discount

# Makes .new happen / sets total to 0 / optionally sets discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    discount_percentage = self.discount / 100

    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= discount_percentage * self.total
      "After the discount, the total comes to $#{self.total}."
    end
  end

end
