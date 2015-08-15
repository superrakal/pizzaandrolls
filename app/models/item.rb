class Item
  include Mongoid::Document
  include Mongoid::Paperclip

  field :top, type: Boolean, default: false
  field :title
  field :price, type: Integer
  field :description
  has_mongoid_attached_file :image
  validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
