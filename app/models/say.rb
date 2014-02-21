class Say < ActiveRecord::Base
  # attr_accessible
  # attr_accessible :commenter, :body

  # validation
  belongs_to :post
end
