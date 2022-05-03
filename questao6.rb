# Comentario Ruby
# Autor: Bruno Lima

puts "Questão Seis"
puts "Contagem regressiva \n"

puts "Digite um numro: "
numero = gets.chomp.to_i #chomp é uma função que remove os caracteres indesejados
puts "\n#{numero}"


count = 0
while count < numero do #while é uma função que executa um bloco de codigo enquanto uma condicao for verdadeira
    numero -= 1
    puts numero
end
puts "Kabum"
