puts "#{ARGV[0]}, input command of OS?"
oscommand = STDIN.gets.chomp
system(oscommand)

puts "#{ARGV[0]}, input command of RUBY?"
rubycommand = STDIN.gets.chomp
system("ruby -e \"#{rubycommand}\"")