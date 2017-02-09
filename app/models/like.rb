class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :pon
  validates_uniqueness_of :pon_id, scope: :user_id
end
