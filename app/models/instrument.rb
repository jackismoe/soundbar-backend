class Instrument < ApplicationRecord
  belongs_to              :brand
  belongs_to              :category
  belongs_to              :user # creator
  has_many                :reviews, :dependent => :destroy
  has_many                :users, through: :reviews, :dependent => :destroy # reviewer
  # has_and_belongs_to_many :cart

  validates_presence_of   :name, :instrument_type, :description, :price

  scope :string,     -> {where(category: "1")}
  scope :percussion, -> {where(category: "2")}
  scope :keyboard,   -> {where(category: "3")}
end
