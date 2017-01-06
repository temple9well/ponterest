class Pon < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :user

  has_attached_file :pon_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :pon_image, content_type: /\Aimage\/.*\z/
end
