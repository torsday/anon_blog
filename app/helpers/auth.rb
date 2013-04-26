



# def authenticate_user(g_un, g_pw)
#   include BCrypt
#   user = User.all.where('user_name = ?', g_un).first
#   user.password_hash_hash == salt_and_hash(g_pw)
# end

# def set_token(args = {})
#   include BCrypt
#   user = User.all.where('user_name = ?', args[:g_un]).first
#   new_token = salt_and_hash(args[:g_un] + Time.now.to_s)
#   user.update_attribute(:token, new_token)
# end
