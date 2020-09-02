class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  # validates :body, uniqueness: true
  def friendly_created_at
    created_at.strftime("%b %e, %Y")
  end
  
end