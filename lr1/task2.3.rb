def method1(num)
    amount = 0
    for i in 1..num
        if num % i == 0 && i % 3 != 0
            amount += 1
        end
    end
    return amount
end

puts method1(ARGV[0].to_i)