puts "Привет, #{ARGV[0]}"
puts "Какой твой любимый ЯП?"
language = STDIN.gets.chomp

puts "Ты подлиза!" if language == "ruby"
puts "Скоро будет Ruby!" if language != "ruby"