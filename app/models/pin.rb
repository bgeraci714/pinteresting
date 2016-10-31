class Pin < ApplicationRecord
  belongs_to :user

  # paperclip implementation
  # styles => creates two version of an image after being uploaded
  # can implement default images as well
  has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
