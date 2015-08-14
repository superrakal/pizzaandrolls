class Item
  include Mongoid::Document
  field :top, type: Boolean, default: false
end
