class User < ActiveRecord::Base
  has_many :quacks
  has_secure_password
  validates :username, presence: true
  acts_as_follower
  acts_as_followable

  def timeline
    user_ids = following_users.pluck(:id)
    user_ids.push(self.id)
    Quack.where(user_id: user_ids).order("username ASC")
  end
end
