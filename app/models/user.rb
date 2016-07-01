class User < ActiveRecord::Base
  validates :username, presence: true
  has_secure_password
  has_many :quacks
  acts_as_follower
  acts_as_followable

  def timeline
    user_ids = following_users.pluck(:id)
    user_ids.push(self.id)
    Quack.where(user_id: user_ids).order("created_at DESC")
  end
end
