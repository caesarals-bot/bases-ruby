dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}
puts "Hello World"
# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
end
# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end
# Exccution flow
loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want to lookup the areacode for?"
    puts get_city_names(dial_book)
    puts "Please write a city to know its area code"
    city_name = gets.chomp
    if dial_book.include?(city_name)
        puts "The area code for #{city_name} is #{get_area_code(dial_book, city_name)}"
    else
        puts "You entered aninvalid city name"
    end
end