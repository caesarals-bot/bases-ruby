a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p a.last

myhash = { a: 1, b: 2, c: 3, d:4}

sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {:name => 'mashrur', :favcolor => 'red', 'c' => 3}
p my_details[:favcolor]

my_details.each do |key, value|
    puts "The class for key is #{key} and the value is #{value}"
end

my_details.select do |k, v| 
    p v.is_a?(String)
end

myhash[:c]
myhash[:d] = 7
puts myhash


