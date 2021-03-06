require 'readline'

def menu(title, options, sleep_time=1, clear=false)
  option = nil
  while true
    Printc.title "#{title}     ◼◼◼     ➤ OneBitCode.com/ruby_twitter", :green, sleep_time, clear
    options.each_with_index do |(key, value),i|
      puts "#{i}) #{key}"
    end
    option  = Readline.readline("►► ")
    if option !~ /\D/ and option.to_i.between?(0, options.count -1)
      break
    else
      Printc.pair("Aviso:", 'Opção inválida', :yellow, :white, sleep_time)
    end
  end

  options.values[option.to_i]
end