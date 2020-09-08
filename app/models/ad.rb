class Ad < ApplicationRecord
  belongs_to :user
  has_many :conversations, dependent: :destroy
  has_many :ad_categories
  has_many :categories, through: :ad_categories

  validates :title, presence: true
  validates :description, presence: true 
  # uniqueness: true
  validates :image_url, presence: true


  def friendly_created_at
    created_at.strftime("%b %e, %Y")
  end

  def category_names
    categories.map { |category| category.name }
  end
end
