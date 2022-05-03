# Comentario Ruby
# Autor: Bruno Lima
puts "Questão Cinco"

puts "Informe o ddd";
ddd = gets.chomp; #chomp é uma função que remove os caracteres indesejados

ddds ={ 
    "61" => "Brasilia",
    "71" => "Salvador",
    "11" => "São Paulo",
    "21" => "Rio de Janeiro",
    "32" => "Juiz de Fora",
    "19" => "Campinas",
    "85" => "Ceara",
}

if ddds.include?(ddd) #include? é uma função que verifica se um dado está dentro de um array
    puts "DDD de #{ddds.fetch(ddd)}"; #fetch é uma função que retorna o valor de uma chave
else
    puts "DDD não encontrado"
end