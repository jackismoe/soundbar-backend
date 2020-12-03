class Category < ApplicationRecord
  has_many :brands
  has_many :instruments, through: :brands
end
