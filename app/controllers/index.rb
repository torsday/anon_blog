get '/' do
  # Look in app/views/index.erb
  erb :index
end


###############################################################
# Create
###############################################################

post '/post/create' do
# create a new post
end

###############################################################
# Read
###############################################################

get '/posts' do
"Here are all the posts"
end

get '/post/:id' do
"here's the post #{params[:id]} If it's yours, you'll be able to edit"
end

get '/tag/:id/posts' do
"show posts of tag #{params[:id]}"
end

###############################################################
# Create & Update: based on credentials
###############################################################



###############################################################
# Destroy
###############################################################

delete '/post/:id' do
"deletes post with id #{params[:id]}"
end





