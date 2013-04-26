

###############################################################
# CREATE
###############################################################

post '/post/create' do
  "create a new post"
end

###############################################################
# READ
###############################################################

get '/posts' do
  # "Here are all the posts"
  @all_posts = Post.all
  erb :all_posts
end

get '/post/:id' do
  # "here's the post #{params[:id]} If it's yours, you'll have a button to edit it"
  @the_post = Post.find(params[:id].to_i)
  erb :a_post
end

###############################################################
# UPDATE
###############################################################

get '/post/edit/:id' do
  "here you'll edit post with id #{params[:id]}"
end

###############################################################
# DESTROY
###############################################################

delete '/post/:id' do
  "deletes post with id #{params[:id]} if user has appro. creds."
end
