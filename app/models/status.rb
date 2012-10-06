class Status < ActiveRecord::Base
  validates :title, :presence => true, :length => {:maximum => 140 }
  attr_accessible :title, :user_name
end
