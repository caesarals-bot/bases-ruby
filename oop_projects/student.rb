require './crud_auth.rb'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username
    # attr_reader :username

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @email = username
        @username = email
        @password = password
    end

    # def first_name=(name)
    #     @first_name = name
    # end

    # def first_name
    #     @first_name
    # end

    # def set_username
    #     @username = "mashrur1"
    # end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
        email address: #{@email}"
    end

end

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
    "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com",
    "password2")

hashed_password = mashrur.create_hash_digest(mashrur.password)

puts hashed_password