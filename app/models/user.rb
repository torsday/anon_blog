class User < ActiveRecord::Base

  has_many :posts
  # before_save :reset_token
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :user_name, :presence => true
  validates :email, :presence => true
  validates :password_hash, :presence => true

  include BCrypt

  def name
    "#{first_name} #{last_name}"
  end

  def self.authenticate(g_un, g_pw)
    user = User.find_by_user_name(g_un)
    return nil unless user
    if user.password_hash == Password.create("kaj%&SDFj98dflkj*2asldfk" + g_pw)
      return user
    else
      return nil
    end
  end

  def reset_token
    self.token = Password.create(Time.now.to_s + "kjsd94*asdHH*&h80fh")
    return self.token
  end

end

