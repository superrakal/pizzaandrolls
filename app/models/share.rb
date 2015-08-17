class Share
  include Mongoid::Document

  field :name
  field :from, type: Date
  field :to, type: Date
  field :description
  field :type
end
