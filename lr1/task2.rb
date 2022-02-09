puts "Привет, #{ARGV[0]}"
puts "Какой твой любимый ЯП?"
language = STDIN.gets.chomp

if language == "ruby"
    puts "Ты подлиза!"
else
    puts "Скоро будет Ruby!"
end