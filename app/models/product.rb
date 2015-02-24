class Product < ActiveRecord::Base
  validates :price, numericality: { greater_than: 0 }

  def price
    price_in_cents / 100.0
  end

  def price=(dollas)
    self.price_in_cents = dollas * 100
  end
end
