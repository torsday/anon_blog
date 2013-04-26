

###############################################################
# CREATE
###############################################################

get '/user/create' do
  "create a new user"
  erb :form_create_user
end

post '/user/create' do
  u = User.create({
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    user_name: params[:user_name],
    password: params[:password],
    })
  puts "SUCCESS"
end

###############################################################
# READ
###############################################################

get '/users/:id/posts' do
  "here will be user #{params[:id]}'s page with info and articles"
  @the_user = User.find(params[:id])
  erb :user_page
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.authenticate(params['user_name'], params['password'])
  return 403 unless user
  user.reset_token
  session[:token] = user.token
  erb :login
end

post '/logout' do
  session[:token] = nil
end

###############################################################
# UPDATE
###############################################################



###############################################################
# DESTROY
###############################################################

