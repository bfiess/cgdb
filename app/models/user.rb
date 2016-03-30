class User < ActiveRecord::Base
	has_secure_password
	has_many :glazes


  validates_confirmation_of :password
  #validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :name
  validates_uniqueness_of :name

  
	 
end
