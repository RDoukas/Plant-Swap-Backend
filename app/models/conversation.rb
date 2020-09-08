class Conversation < ApplicationRecord

  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
  belongs_to :ad
  has_many :messages, dependent: :destroy
  
end
