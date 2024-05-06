class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :category, presence: true
end
