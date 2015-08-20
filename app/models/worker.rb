class Worker
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name
  field :surname
  field :post
  has_mongoid_attached_file :image,
                            :styles => {
                                :original => ['640x480', :jpg]
                            }
  validates_attachment_content_type :image, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
