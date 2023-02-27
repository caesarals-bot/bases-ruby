
puts 1 + 2

puts 10 / 4

puts 10.0 / 4 #para obtener decimales hay que comvertir en flotante un number

x = 5
y = 10

puts y / x

puts "I am a line"
puts "-" * 20
puts "I am a diff line after a divider"
20.times { print "-"} # imprime en la misma linea
20.times { puts rand(10)} # rand nos da numero al azar

num = "3"

puts num * 2 #Como es un string concatena

puts num.to_i * 2 # Se cambia de strin a number con to_i

puts num.to_f # Se cconvierte en flotante con to_f
# no podemos convertir de string a entero o a flotante devuelve cero