class User < ActiveRecord::Base
  has_many :posts
  
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :user_name, :presence => true
  validates :email, :presence => true
  validates :password_hash, :presence => true

  def name
    "#{first_name} #{last_name}"
  end
end
