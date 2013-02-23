class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password_confirmation, :remember_me, :name, :password, :role, :username
  has_many :tickets

  validates :email, {:presence => true, :uniqueness => true }
  validates :name, :presence => true
  validates :username,{ :presence => true, :uniqueness => true }
  validates :password, :length => { :in => 6..20 }
  self.per_page = 10
end

