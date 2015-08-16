class Comment
  include Mongoid::Document

  field :name
  field :email
  field :text
  field :approved, type: Boolean, default: false

end
