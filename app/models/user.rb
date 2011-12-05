class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  validates :email, :username, :uniqueness => true
  
  has_and_belongs_to_many :songs
end
