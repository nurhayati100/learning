class Post < ActiveRecord::Base
  # attr_accessible
  attr_accessible :title, :text

  # assosiation
  has_many :says, dependent: :destroy

  # validation
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true

end
