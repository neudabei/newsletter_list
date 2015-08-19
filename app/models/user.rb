class User < ActiveRecord::Base
  has_many :newsletters
  has_many :votes

  has_secure_password validations: false
  validates_presence_of :name, :email, :password
  validates_uniqueness_of :email
end