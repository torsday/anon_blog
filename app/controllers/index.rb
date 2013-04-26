get '/' do
  # Look in app/views/index.erb
  erb :index
end


###############################################################
# User Authentification
###############################################################

post '/login' do
end

post '/logout' do
end

###############################################################
# Create
###############################################################

post '/post/create' do
  "create a new post"
end

get '/user/create' do
  "create a new user"
end

post '/user/create' do
end

###############################################################
# Read
###############################################################

get '/posts' do
  # "Here are all the posts"
  @all_posts = Post.all
  erb :all_posts
end

get '/users/:id/posts' do
  "here will be user #{params[:id]}'s page with info and articles"
  @the_user = User.find(params[:id])
  erb :user_page
end

get '/post/:id' do
  # "here's the post #{params[:id]} If it's yours, you'll have a button to edit it"
  @the_post = Post.find(params[:id].to_i)
  erb :a_post
end

get '/tag/:id/posts' do
  # "show posts of tag #{params[:id]}"
  @the_tag = Tag.find(params[:id])
  erb :a_tag_page
end

###############################################################
# Update: based on credentials
###############################################################

get '/post/edit/:id' do
  "here you'll edit post with id #{params[:id]}"
end

###############################################################
# Destroy
###############################################################

delete '/post/:id' do
  "deletes post with id #{params[:id]} if user has appro. creds."
end





