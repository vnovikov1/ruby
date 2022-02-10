def method1(num)
    amount = 0
    for i in 1..num
        if num % i == 0 && i % 3 != 0
            amount += 1
        end
    end
    return amount
end

def method2(num)
    min = num % 10
    num /= 10
    if min == 0 then min = num % 10 end
    while num != 0 do
        a = num % 10
        if a % 2 != 0 && a < min
            min = a
        end
        num /= 10
    end
    if min % 2 == 0 
        puts "Нечетных цифр нет!"
    else
        return min
    end
end

puts method1(ARGV[0].to_i)
puts method2(ARGV[0].to_i)