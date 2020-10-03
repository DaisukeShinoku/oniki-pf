# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ユーザー

# 1
User.create!(name:  "Admin User",
  account_id: "admin_1",
  email: "example@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  admin: true)

# 2
User.create!(name: "サンプルユーザー",
  account_id: "user_1",
  email: "user1@user.com",
  password: "123456",
  password_confirmation: "123456"
  )