require 'faker'

14.times do
  Tag.create({
    name: Faker::Lorem.word
    })
end
tags = Tag.all

16.times do
  Author.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
    })
end
authors = Author.all


76.times do
  Post.create({
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs,
    author: authors.sample,
    })
end

# Tag the posts
Post.all.each do |post|
  rand(9 + 1).times do
    post.tags << tags.sample
  end
end
