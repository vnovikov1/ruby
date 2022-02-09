puts "Привет, #{ARGV[0]}"
puts "Какой твой любимый ЯП?"
language = STDIN.gets.chomp

unless language == "ruby" 
    puts "Скоро будет Ruby!"
else
    puts "Ты подлиза!"
end