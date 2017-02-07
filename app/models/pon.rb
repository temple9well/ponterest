class Pon < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :user

  has_attached_file :pon_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :pon_image, content_type: /\Aimage\/.*\z/

  def repost(user)
    repost_pon = self.dup
    repost_pon.user_id = user.id
    repost_pon.original_pon_id = self.id
    repost_pon.pon_image = self.pon_image
    repost_pon.save
  end

  def is_repost?
    original_pon_id.present?
  end

  def original_pon
    Pon.find(original_pon_id) if is_repost?
  end
end
