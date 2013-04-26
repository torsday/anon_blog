require 'faker'

14.times do
  Tag.create({
    name: Faker::Lorem.word
    })
end
tags = Tag.all

16.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_name: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password_hash: Faker::Lorem.word
    })
end
users = User.all


76.times do
  Post.create({
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs,
    user: users.sample
    })
end

# Tag the posts
Post.all.each do |post|
  rand(9 + 1).times do
    post.tags << tags.sample
  end
end
