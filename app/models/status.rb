class Status < ActiveRecord::Base
  scope :descending, order("id DESC")
  validates :title, :presence => true, :length => {:maximum => 140 }
  attr_accessible :title, :user_name
end
