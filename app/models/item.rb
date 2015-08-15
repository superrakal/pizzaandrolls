class Item
  include Mongoid::Document
  include Mongoid::Paperclip

  field :top, type: Boolean, default: false
  field :title
  field :description
  has_mongoid_attached_file :image
  field :price, type: Integer
  validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
