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

def min(num)
    min = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a < min then 
            min = a
        end
        num /= 10
    end
    return min
end

def max(num)
    max = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a > max then 
            max = a
        end
        num /= 10
    end
    return max
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

def select_method(argv)
    if argv.empty? then puts "Hello World!" end
        
    noMethod = []
    if argv[0] == '-h'
        return "Список доступных методов:\n1 - sum - сумма цифр числа
2 - product - произведение цифр числа
3 - min - минимальная цифра в числе
4 - max - максимальная цифра в числе
5 - method1 - количество делителей числа, не делящихся на 3 
6 - method2 - минимальная нечетная цифра в числе
7 - method3 - сумма делителей числа, взаимно простых с суммой его цифр и взаимно не простых с произведением цифр"
    end

    if !argv.empty? then
        print 'Введите число: '
        num = STDIN.gets.chomp.to_i

        for item in argv
            case item
            when '1'
                puts "Сумма цифр числа #{num}: " + sum_of_digits(num).to_s
            when '2'
                puts "Произведение цифр числа #{num}: " + product_of_digits(num).to_s
            when '3'
                puts "Минимальная цифра в числе #{num}: " + min(num).to_s
            when '4'
                puts "Максимальная цифра в числе #{num}: " + max(num).to_s
            when '5'
                puts "Количество делителей числа #{num}, не делящихся на 3: " + method1(num).to_s
            when '6'
                puts "Минимальная нечетная цифра в числе #{num}: " + method2(num).to_s
            when '7'
                puts "Сумма делителей числа #{num}, взаимно простых с суммой его цифр и взаимно не простых с произведением: " + method3(num).to_s
            else
                if item != '-h'
                    noMethod.push(item)
                end
            end
        end
    end

    if !noMethod.empty?
        puts "Таких методов не существует: #{noMethod} \nВведите '-h' для получения помощи"
    end
end

puts select_method(ARGV)