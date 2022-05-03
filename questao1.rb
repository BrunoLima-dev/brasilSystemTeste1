# Comentario Ruby
# Autor: Bruno Lima

puts "Primeira Questão! \n\n"
puts "Digite seu nome: "
nome = gets.chomp;#chomp remove o \n do final do string

caracteres = nome.gsub(' ', '');#gsub é uma função que substitui um caractere por outro

puts nome.inspect;#inspect é uma função que imprime o conteúdo do objeto

puts "#{nome} tem #{caracteres.length} letras"#length é uma função que retorna o comprimento do string