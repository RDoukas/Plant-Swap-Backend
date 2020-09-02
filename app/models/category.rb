class Category < ApplicationRecord
  has_many :ad_categories
  has_many :ads, through: :ad_categories
  
  validates :name, uniqueness: true
end
