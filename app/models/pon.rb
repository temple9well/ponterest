class Pon < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :user
end
