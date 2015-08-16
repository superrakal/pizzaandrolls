class Pizza < Item
  field :small_price, type: Integer
  def small_price_with_discount
    if self.discount.present?
      self.small_price * (100-self.discount.percent) / 100
    else
      self.small_price
    end
  end
end
