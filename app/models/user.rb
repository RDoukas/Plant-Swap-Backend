class User < ApplicationRecord
 has_many :ads, dependent: :destroy

  # any conversations where the user is the sender OR recipient. Replaces has_many association with custom method
  def conversations
    Conversation.where("sender_id = ? OR recipient_id = ?", id, id)
  end

 

  #maybe necessary, maybe not
  # has_many :messages

  

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, length: { maximum: 20 }
  validates :password, presence: true
  # length: { in: 6..20 }
end
