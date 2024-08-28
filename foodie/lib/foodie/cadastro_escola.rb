# cadastro_escola.rb

# Array para armazenar os dados das escolas
escolas = []

loop do
  # Solicita os dados da escola ao usuário
  puts "Insira os dados da escola:"

  print "Nome da Escola: "
  nome = gets.chomp

  print "Endereço: "
  endereco = gets.chomp

  print "Telefone: "
  telefone = gets.chomp

  print "Email: "
  email = gets.chomp

  # Cria um hash para armazenar os dados da escola
  escola = {
    nome: nome,
    endereco: endereco,
    telefone: telefone,
    email: email
  }

  # Adiciona o hash ao array de escolas
  escolas << escola

  puts "\nEscola cadastrada com sucesso!"
  puts "Detalhes da escola:"
  puts "Nome: #{escola[:nome]}"
  puts "Endereço: #{escola[:endereco]}"
  puts "Telefone: #{escola[:telefone]}"
  puts "Email: #{escola[:email]}"
  puts "-" * 30

  # Pergunta ao usuário se deseja cadastrar outra escola
  print "Deseja cadastrar outra escola? (S/N): "
  resposta = gets.chomp.upcase

  # Sai do loop se o usuário não quiser cadastrar outra escola
  break if resposta != 'S'
end

# Exibe a lista de todas as escolas cadastradas
puts "\nEscolas cadastradas:"
escolas.each_with_index do |escola, index|
  puts "#{index + 1}. #{escola[:nome]} - #{escola[:endereco]} - #{escola[:telefone]} - #{escola[:email]}"
end

puts "\nPrograma encerrado."