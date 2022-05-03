# Comentario Ruby
# Autor: Bruno Lima

puts "Questão quatro"
puts "fazer o somatorio da data de nascimento."

def solicitarData
    puts "Digite uma data de nascimento! \n\n"    
    print "\n(DIA/MES/ANO) : ";
    new_data = gets.chomp;
    verificarData(new_data);
end

def verificarData(new_data = "")
    # Remove os caracteres indesejados e separa somente o numeros que se emcaixam
    # no formato de data dd/mm/yyy e que estejam separados por '/' e transforma em uma string
    #caso me retorne mais de uma data, so irá ficar com a primeira.
    dataNascimento = new_data.scan(/\d{2}\/\d{2}\/\d{4}/)[0];#scan é uma função que retorna um array
    
    # se não tiver uma data depois de verificado, sera solicitado uma nova data.
    if !dataNascimento
        puts "\nERRO! A data informada não é válida. \nPor favor informe uma data válida. \n\n"
        solicitarData();#chama a função solicitarData
    else
        #removo as '/' para trabalhar com uma string que só tenha valores numericos. 
        dataSoNumero=dataNascimento.gsub('/','');#gsub é uma função que substitui um caractere por outro
        somar(dataSoNumero);#chama a função somar
    end
end

#função responsavel por quebrar a string, somar e exibir o resultado da soma.
def somar(dataSoNumero = "")#dataSoNumero é uma string que só tem valores numericos
    somatorio = ""; #string que irá armazenar o resultado da soma
    resultado = 0; #variavel que irá armazenar o resultado da soma

    for i in dataSoNumero.split("") do #split é uma função que divide uma string em um array
        dataSoNumero[i].to_i>0? somatorio += "#{dataSoNumero[i]}" : ""
        resultado += dataSoNumero[i].to_i; 
    end
    #quebro a string e adiciono um '+' entre os caracteres;
    puts "#{somatorio.split("").join("+")} = #{resultado}"; #
end

solicitarData();