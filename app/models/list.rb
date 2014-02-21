class List < ActiveRecord::Base

  # attr_accessible
  attr_accessible :title, :category, :body, :published, :attachment, :member_id
  mount_uploader :attachment, AttachmentUploader

  # validation
  validates :title, presence: true, length: { minimum: 5 }
  validates :category, presence: true
  validates :body, presence: true
  validates :published, presence: true


end
