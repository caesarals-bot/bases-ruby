
users = [
    { userName: "mashur", password: "password1"},
    { userName: "jack", password: "password2"},
    { userName: "arya", password: "password3"},
    { userName: "jonshow", password: "password4"},
    { userName: "heisenberg", password: "password5"}
]

def auth_user(userName, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:userName] == userName && user_record[:password] == password
            return user_record
        end 
    end
    "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
# puts "Username:" 
# userName = gets.chomp
# puts "Password:" 
# password = gets.chomp

# users.each do |key, value|
#     puts "#{ key } #{ value }"
# end

puts "If password is correct, yoou will get back the user object"

attempts = 1

while attempts < 4
    print "Username: "
    userName = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(userName, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    #if input == "n"
    #    break
    #end
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4