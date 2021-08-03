require 'readline'

Dir["./helpers/*.rb"].each {|file| require file}
Dir["./commands/**/*.rb"].each {|file| require file}
Dir["./config/*.rb"].each {|file| require file}

puts `clear`

while true
  command = menu(
    "O que você deseja fazer?",
    {
      "Tweetar": :new_tweet,
      "Ver o meu perfil": :profile,
      "Ver o perfil de outro usuário": :other_profile,
      "Pesquisar": :search,
      "Ajuda": :help,
      "Sair": :exit
    }
  )

  case command
    when :other_profile
      puts "\n\n ver outro perfil\n\n"
    when :profile
      puts "\n\ ver o próprio perfil\n\n"
    when :search
      puts "\n\n pesquisa \n\n"
    when :help
      puts "\n\n lista de comandos \n\n"
    when :new_tweet
      puts "\n\n novo tweet \n\n"
    when :exit
      break
  end
end