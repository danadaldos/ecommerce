class Product < ActiveRecord::Base
  validates :price, numericality: { greater_than: 0 }
  include Payola::Sellable

  def price
    price_in_cents
  end

  def price_in_dollars
    price_in_cents / 100.0
  end

  def price=(dollars)
    self.price_in_cents = dollars * 100
  end
end
