num = ARGV[0].to_i
sum = 0

while num != 0 do
    a = num % 10
    sum += a
    num /= 10
end

puts 'sum - ' + sum.to_s