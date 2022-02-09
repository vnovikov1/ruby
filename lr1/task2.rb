puts "Привет, #{ARGV[0]}"
puts "Какой твой любимый ЯП?"
language = STDIN.gets.chomp

case language
when "ruby"
    puts "Ты подлиза!"
when "python"
    puts "Скоро будет Ruby!"
when "c++" 
    puts "Здоровья."
else
    puts "Я не знаю такого :("
end