# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |idx|
  category = Category.create(name: "CAT #{idx}")
  post = Post.create(title: "Post #{idx}", content: 'Content')
  post.categories << category
end

10.times do |idx|
  User.create(username: "User #{idx}", email: "user#{idx}@somewhere.com")
end

Comment.create(user: User.first, post: Post.first, content: 'whatever')
Comment.create(user: User.first, post: Post.first, content: 'whatever')
Comment.create(user: User.first, post: Post.first, content: 'whatever')
Comment.create(user: User.first, post: Post.first, content: 'whatever')
Comment.create(user: User.find(2), post: Post.first, content: 'whatever')
Comment.create(user: User.first, post: Post.find(2), content: 'whatever')
Comment.create(user: User.find(4), post: Post.first, content: 'whatever')
