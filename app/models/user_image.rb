class UserImage < ActiveRecord::Base
  belongs_to :user
  attr_accessible :photo, :user_id
  has_attached_file :photo, :styles => { :small => "150x150#", :large => "300x300#" }
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
end
