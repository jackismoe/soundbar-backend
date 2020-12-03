class Brand < ApplicationRecord
  has_many              :instruments
  has_many              :reviews, through: :instruments
  belongs_to            :category
  
  scope :string,     -> {where(category: "1")}
  scope :percussion, -> {where(category: "2")}
  scope :keyboard,   -> {where(category: "3")}

  validates_presence_of :name
end
