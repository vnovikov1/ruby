puts "Привет, #{ARGV[0]}"
puts "Какой твой любимый ЯП?"
language = STDIN.gets.chomp

if language == "ruby"
    puts "Ты подлиза!"
end
if language != "ruby"
    puts "Скоро будет Ruby!"
end