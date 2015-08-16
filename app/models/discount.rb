class Discount < Share
  field :percent, type: Integer
  has_many :items
end
