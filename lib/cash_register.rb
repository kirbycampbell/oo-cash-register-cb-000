
class CashRegister
attr_accessor :total, :discount

# Makes .new happen / sets total to 0 / optionally sets discount
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end




end
