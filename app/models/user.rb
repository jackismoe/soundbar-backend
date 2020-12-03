class User < ApplicationRecord
  has_secure_password

  has_many :reviews, :dependent => :destroy
  has_many :instruments, :dependent => :destroy # created
  has_many :brands, through: :instruments, :dependent => :destroy
  has_many :categories, through: :instruments, :dependent => :destroy
  has_many :reviewed_instruments, through: :reviews, source: :instrument, :dependent => :destroy # reviewed
  # has_one  :cart
  
  validates_presence_of :username, :email, :password_digest, :password_confirmation
  validates :twitter_uid, numericality: {allow_blank: true}
  validates_uniqueness_of :username
end
