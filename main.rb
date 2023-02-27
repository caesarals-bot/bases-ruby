require './oop_projects/crud_auth.rb'

users = [
    { userName: "mashur", password: "password1"},
    { userName: "jack", password: "password2"},
    { userName: "arya", password: "password3"},
    { userName: "jonshow", password: "password4"},
    { userName: "heisenberg", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users