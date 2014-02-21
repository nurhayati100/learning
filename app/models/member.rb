class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :username

  # validation
  validates :email, presence: true
  validates :username, presence: true, length: { maximum: 20 }

  # assosiation
  belongs_to :lists

end
