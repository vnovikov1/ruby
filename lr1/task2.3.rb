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

def sum_of_digits(num)
    sum = 0
    while num != 0 do
        a = num % 10
        sum += a
        num /= 10
    end
    return sum
end

def product_of_digits(num)
    pr = 1 
    while num != 0 do
        a = num % 10
        pr *= a
        a = num /= 10
    end
    return pr
end

def coprime?(num1, num2)
    if num1 > num2
        num1, num2 = num2, num1
    end
    for i in 2..num2
        if num1 % i == 0 && num2 % i == 0
            return false
        end
    end
    return true
end

def method3(num)
    sum = 0
    for i in 1..num
        if num % i == 0
            if coprime?(i, sum_of_digits(num))
                if coprime?(i, product_of_digits(num)) == false
                    sum += i
                end
            end
        end
    end
    return sum
end

puts method1(ARGV[0].to_i)
puts method2(ARGV[0].to_i)
puts method3(ARGV[0].to_i)