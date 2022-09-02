class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
    @last = 0
  end


  def add_item(title, price, quantity = 1)
    quantity.times do
      items.push(title)
    end
    self.last = price * quantity
    self.total += last
  end

  def apply_discount
    if discount != 0
      self.total = total * (100 - discount) / 100
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= last
    if total >= 0
      total
    else
      self.total = 0.0
      self.total
    end
  end


end
