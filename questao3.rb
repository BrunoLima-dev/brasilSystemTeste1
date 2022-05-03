# Comentario Ruby
# Autor: Bruno Lima

puts "Questão tres \n\n"

puts "Digite uma palavra: "
palavra = gets.chomp;#chomp remove o \n do final do string

metade = (palavra.length.to_f / 2).ceil;#ceil arredonda para cima

puts palavra[0...metade];