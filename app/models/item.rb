class Item
  include Mongoid::Document
  include Mongoid::Paperclip

  field :top, type: Boolean, default: false
  field :title
  field :description
  has_mongoid_attached_file :image
  field :price, type: Integer

  belongs_to :discount
  validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  def price_with_discount
    if self.discount.present?
      self.price * self.discount.percent / 100
    else
      self.price
    end
  end

  def is_has_discount
    self.discount.present? && self.discount.to >= Date.current()
  end

end
