class Product < ApplicationRecord
  belongs_to :users

  validates :gender, presence: true
  validates :describtion, presence: true
  validates :price, presence: true
  validates :category, presence: true
  has_one_attached :photo
end
