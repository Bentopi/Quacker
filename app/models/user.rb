class User < ActiveRecord::Base
  has_many :quacks
  has_secure_password
  validates :username, presence: true
end
